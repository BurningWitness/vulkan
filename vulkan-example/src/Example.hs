{-# LANGUAGE CApiFFI
           , DataKinds
           , ForeignFunctionInterface
           , MagicHash
           , PatternSynonyms
           , ScopedTypeVariables
           , TypeApplications
           , ViewPatterns #-}

module Example
  ( initialize
  , pattern VK_LAYER_KHRONOS_validation
  ) where

import           Example.Extensions
import           Example.Shaders

import           Vulkan.Core_1_0
import           Vulkan.Ext.VK_KHR_surface
import           Vulkan.Ext.VK_KHR_swapchain
import           VkMemAlloc

import           Bindings.GLFW
import           Control.Exception
import           Control.Monad
import           Data.Bits
import           Data.List as List
import           Data.Maybe
import           Data.Traversable
import           Data.Word
import           Foreign.C.String
import           Foreign.Marshal.Alloc
import           Foreign.Marshal.Array
import           Foreign.Storable
import           Foreign.Storable.Offset as Off
import           GHC.Ptr
import           GHC.Records



data Static =
       Static
         { staticInstance         :: VkInstance
         , staticVK_KHR_surface   :: VK_KHR_surface
         , staticWindow           :: Ptr C'GLFWwindow
         , staticSurface          :: VkSurfaceKHR
         , staticPhysicalDevice   :: VkPhysicalDevice
         , staticQueueFamilies    :: QueueFamilies
         , staticSwapParameters   :: SwapParams
         , staticDevice           :: VkDevice
         , staticPresentQueue     :: VkQueue
         , staticVK_KHR_swapchain :: VK_KHR_swapchain
         , staticPipelineLayout   :: VkPipelineLayout
         , staticRenderPass       :: VkRenderPass
         , staticPipeline         :: VkPipeline
         , staticCommandPool      :: VkCommandPool
         , staticCommandBuffer    :: VkCommandBuffer
         , staticImageAvailable0  :: VkSemaphore
         , staticImageAvailable1  :: VkSemaphore
         , staticRenderFinished0  :: VkSemaphore
         , staticRenderFinished1  :: VkSemaphore
         , staticInFlight0        :: VkFence
         , staticInFlight1        :: VkFence
         , staticBuffer           :: VkBuffer
         }

data Dynamic =
       Dynamic
         { dynamicSwapchain      :: VkSwapchainKHR
         , dynamicImages         :: [VkImage]
         , dynamicImageViews     :: [VkImageView]
         , dynamicFramebuffers   :: [VkFramebuffer]
         }

initialize :: [CString] -> IO ()
initialize instLayers = do
  bracket_ glfwInit c'glfwTerminate $ do
    instExts <- getInstanceExtensionList

    bracket (createInstance instLayers instExts) (\inst -> vkDestroyInstance inst nullPtr) $ \inst -> do

      vk_KHR_surface <- getInstanceExtension inst :: IO VK_KHR_surface

      let wsize = (512, 512)

      bracket (glfwCreateWindow wsize "Triangles") c'glfwDestroyWindow $ \window -> do

        glfwSetStickyKeys window

        fsize <- glfwGetFramebufferSize window

        bracket (glfwCreateWindowSurface inst window)
                (\surf -> vkDestroySurfaceKHR vk_KHR_surface inst surf nullPtr) $ \surf -> do

          (phys, qfam, devExts) <- choosePhysicalDevice vk_KHR_surface inst surf

          swapParams <- queryDeviceSwapParams vk_KHR_surface phys surf

          bracket (createDevice phys qfam devExts) (\dev -> vkDestroyDevice dev nullPtr) $ \dev -> do

            pque <- getPresentQueue dev qfam

            vk_KHR_swapchain <- getDeviceExtension dev :: IO VK_KHR_swapchain

            bracket (createPipelineLayout dev) (\layout -> vkDestroyPipelineLayout dev layout nullPtr) $ \layout ->

              bracket (createRenderPass swapParams dev) (\pass -> vkDestroyRenderPass dev pass nullPtr) $ \pass ->

                bracket (createGraphicsPipeline dev layout pass) (\pipe -> vkDestroyPipeline dev pipe nullPtr) $ \pipe -> do

                  bracket (createCommandPool qfam dev) (\pool -> vkDestroyCommandPool dev pool nullPtr) $ \pool -> do

                    cbuf <- allocateCommandBuffer dev pool

                    bracket (createSemaphore dev) (\ia0sem -> vkDestroySemaphore dev ia0sem nullPtr) $ \ia0sem ->

                      bracket (createSemaphore dev) (\ia1sem -> vkDestroySemaphore dev ia1sem nullPtr) $ \ia1sem ->

                        bracket (createSemaphore dev) (\rf0sem -> vkDestroySemaphore dev rf0sem nullPtr) $ \rf0sem ->

                          bracket (createSemaphore dev) (\rf1sem -> vkDestroySemaphore dev rf1sem nullPtr) $ \rf1sem ->

                            bracket (createFence dev) (\fence0 -> vkDestroyFence dev fence0 nullPtr) $ \fence0 ->

                              bracket (createFence dev) (\fence1 -> vkDestroyFence dev fence1 nullPtr) $ \fence1 -> do
                          
                                bracket (createAllocator inst phys dev) vmaDestroyAllocator $ \alloc ->

                                  bracket (createBuffer alloc 60) (uncurry $ vmaDestroyBuffer alloc) $ \(buf, alc) -> do

                                    bracket (mapMemory alloc alc) (\_ -> vmaUnmapMemory alloc alc) $ \ptr ->

                                      pokeArray (castPtr ptr :: Ptr Float)
                                        [    0, -0.5, 1, 0, 0
                                        ,  0.5,  0.5, 0, 1, 0
                                        , -0.5,  0.5, 0, 0, 1
                                        ]

                                    preloop fsize Front Static
                                                          { staticInstance         = inst
                                                          , staticVK_KHR_surface   = vk_KHR_surface
                                                          , staticWindow           = window
                                                          , staticSurface          = surf
                                                          , staticPhysicalDevice   = phys
                                                          , staticQueueFamilies    = qfam
                                                          , staticSwapParameters   = swapParams
                                                          , staticDevice           = dev
                                                          , staticPresentQueue     = pque
                                                          , staticVK_KHR_swapchain = vk_KHR_swapchain
                                                          , staticPipelineLayout   = layout
                                                          , staticRenderPass       = pass
                                                          , staticPipeline         = pipe
                                                          , staticCommandPool      = pool
                                                          , staticCommandBuffer    = cbuf
                                                          , staticImageAvailable0  = ia0sem
                                                          , staticImageAvailable1  = ia1sem
                                                          , staticRenderFinished0  = rf0sem
                                                          , staticRenderFinished1  = rf1sem
                                                          , staticInFlight0        = fence0
                                                          , staticInFlight1        = fence1
                                                          , staticBuffer           = buf
                                                          }

data Action = Resize
            | Close

preloop :: (Word32, Word32) -> Side -> Static -> IO ()
preloop fsize side static = do
  let window           = getField @"staticWindow"           static
      surf             = getField @"staticSurface"          static
      qfam             = getField @"staticQueueFamilies"    static
      swapParams       = getField @"staticSwapParameters"   static
      dev              = getField @"staticDevice"           static
      vk_KHR_swapchain = getField @"staticVK_KHR_swapchain" static
      pass             = getField @"staticRenderPass"       static
  
  (side', action) <- do
    bracket (createSwapchain vk_KHR_swapchain fsize surf qfam swapParams dev)
            (\swch -> vkDestroySwapchainKHR vk_KHR_swapchain dev swch nullPtr) $ \swch -> do
          
      imgs <- getSwapchainImages vk_KHR_swapchain dev swch
                     
      withImageViews dev swapParams imgs $ \views ->
                   
        withFramebuffers fsize dev pass views $ \fbufs ->
                     
          flip finally (deviceWaitIdle dev) $
            loop fsize side static Dynamic
                                     { dynamicSwapchain    = swch
                                     , dynamicImages       = imgs
                                     , dynamicImageViews   = views
                                     , dynamicFramebuffers = fbufs
                                     }
  case action of
    Resize ->
      let resize = do
            (w', h') <- glfwGetFramebufferSize window
            -- Guards against window minimization
            if w' > 0 && h' > 0
              then preloop (w', h') side' static
              else do
                c'glfwWaitEvents
                shouldExit <- glfwShouldExit window
                if shouldExit
                  then return ()
                  else resize
      in resize

    Close  -> return ()



data Side = Front
          | Back

nextSide :: Side -> Side
nextSide Front = Back
nextSide Back  = Front

loop :: (Word32, Word32) -> Side -> Static -> Dynamic -> IO (Side, Action)
loop fsize side static dynamic = do
  let window           = getField @"staticWindow"           static
      dev              = getField @"staticDevice"           static
      pque             = getField @"staticPresentQueue"     static
      vk_KHR_swapchain = getField @"staticVK_KHR_swapchain" static
      pass             = getField @"staticRenderPass"       static
      pipe             = getField @"staticPipeline"         static
      cbuf             = getField @"staticCommandBuffer"    static
      (iasem, rfsem, fence) =
        case side of
          Front -> (getField @"staticImageAvailable0" static, getField @"staticRenderFinished0" static, getField @"staticInFlight0" static)
          Back  -> (getField @"staticImageAvailable1" static, getField @"staticRenderFinished1" static, getField @"staticInFlight1" static)
      buf              = getField @"staticBuffer" static

      swch             = getField @"dynamicSwapchain" dynamic
      fbufs            = getField @"dynamicFramebuffers" dynamic
  
  nextImage <- acquireNextImageKHR vk_KHR_swapchain dev swch iasem

  case nextImage of
    OutOfDate                   -> return (side, Resize)
    NextImage flavor imageIndex -> do

      resetCommandBuffer cbuf
      beginCommandBuffer cbuf
      cmdBeginRenderPass cbuf fsize pass (fbufs !! fromIntegral imageIndex)
      vkCmdBindPipeline cbuf VK_PIPELINE_BIND_POINT_GRAPHICS pipe
      cmdSetViewport cbuf fsize
      cmdSetScissor cbuf fsize
      withArray [buf] $ \bufPtr ->
        withArray [0] $ \offPtr ->
          vkCmdBindVertexBuffers cbuf 0 1 bufPtr offPtr
      vkCmdDraw cbuf 3 1 0 0
      vkCmdEndRenderPass cbuf
      endCommandBuffer cbuf

      queueSubmit pque cbuf iasem rfsem fence
      flavor2 <- presentInfoKHR vk_KHR_swapchain swch pque rfsem imageIndex

      waitForFence dev fence
      resetFence dev fence
      
      c'glfwPollEvents

      shouldExit <- glfwShouldExit window
      if shouldExit
        then return (nextSide side, Close)
        else case flavor of
               Proper     -> case flavor2 of
                               Proper     -> loop fsize (nextSide side) static dynamic
                               Suboptimal -> return (nextSide side, Resize)

               Suboptimal -> return (nextSide side, Resize)



glfwInit :: IO ()
glfwInit = do
  isInit <- c'glfwInit
  when (isInit /= c'GLFW_TRUE) $
    fail "Could not initialize GLFW"



glfwGetRequiredInstanceExtensions :: IO (Ptr CString, Word32)
glfwGetRequiredInstanceExtensions = do
  alloca $ \ptr -> do
    extPtr <- c'glfwGetRequiredInstanceExtensions ptr
    if extPtr == nullPtr
      then fail "Either Vulkan is not available \
                \or this version does not support window surface creation"

      else do
        extCount <- peek ptr
        return (extPtr, extCount)


-- | Ensures that the setup has all the instance extensions we need, fails otherwise.
--
--   Returns a list of instance extensions required to run the program.
getInstanceExtensionList :: IO [CString]
getInstanceExtensionList = do
  (glfwExts, glfwCount) <- glfwGetRequiredInstanceExtensions

  baseExts <- peekArray (fromIntegral glfwCount) glfwExts

  let exts = mappend baseExts []

  remExts <- checkInstanceExtensionSupport exts

  case remExts of
    []  -> return exts
    _:_ -> do
      peeked <- traverse peekCString remExts
      fail $ "Current Vulkan installation does not support following instance extension(s): "
               <> List.intercalate ", " peeked



pattern VK_LAYER_KHRONOS_validation :: CString
pattern VK_LAYER_KHRONOS_validation <- (const False -> True)
  where
    VK_LAYER_KHRONOS_validation = Ptr "VK_LAYER_KHRONOS_validation\0"#

createInstance :: [CString] -> [CString] -> IO VkInstance
createInstance layers exts =
  withArray exts $ \extPtr ->
    alloca $ \(infoPtr :: Ptr VkInstanceCreateInfo) ->
      withArray layers $ \layrPtr -> do
        poke (Off.offset @"sType"                   infoPtr) VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO
        poke (Off.offset @"pNext"                   infoPtr) nullPtr
        poke (Off.offset @"flags"                   infoPtr) 0
        poke (Off.offset @"pApplicationInfo"        infoPtr) nullPtr
        poke (Off.offset @"enabledLayerCount"       infoPtr) (fromIntegral $ length layers)
        poke (Off.offset @"ppEnabledLayerNames"     infoPtr) (castPtr layrPtr)
        poke (Off.offset @"enabledExtensionCount"   infoPtr) (fromIntegral $ length exts)
        poke (Off.offset @"ppEnabledExtensionNames" infoPtr) (castPtr extPtr)

        alloca $ \ptr -> do
          res <- vkCreateInstance infoPtr nullPtr ptr
          case res of
            VK_SUCCESS                     -> peek ptr
            VK_ERROR_OUT_OF_HOST_MEMORY    -> fail "vkCreateInstance: out of host memory"
            VK_ERROR_OUT_OF_DEVICE_MEMORY  -> fail "vkCreateInstance: out of device memory"
            VK_ERROR_INITIALIZATION_FAILED -> fail "vkCreateInstance: initialization failed"
            VK_ERROR_LAYER_NOT_PRESENT     -> fail "vkCreateInstance: layer not present"
            VK_ERROR_EXTENSION_NOT_PRESENT -> fail "vkCreateInstance: extension not present"
            VK_ERROR_INCOMPATIBLE_DRIVER   -> fail "vkCreateInstance: incompatible driver"
            _                              -> fail $ "vkCreateInstance: error #" <> show res



glfwCreateWindow :: (Word32, Word32) -> String -> IO (Ptr C'GLFWwindow)
glfwCreateWindow (w, h) name = do
  c'glfwWindowHint c'GLFW_CLIENT_API c'GLFW_NO_API

  window <- withCString name $ \namePtr ->
              c'glfwCreateWindow (fromIntegral w) (fromIntegral h) namePtr nullPtr nullPtr

  if window == nullPtr
    then fail "Could not create a GLFW window"
    else return window



glfwSetStickyKeys :: Ptr C'GLFWwindow -> IO ()
glfwSetStickyKeys window = c'glfwSetInputMode window c'GLFW_STICKY_KEYS c'GLFW_TRUE



glfwGetFramebufferSize :: Ptr C'GLFWwindow -> IO (Word32, Word32)
glfwGetFramebufferSize window =
  allocaArray 2 $ \ptr -> do
    c'glfwGetFramebufferSize window ptr (advancePtr ptr 1)
    width  <- peek ptr
    height <- peek $ advancePtr ptr 1
    return (fromIntegral width, fromIntegral height)



glfwShouldExit :: Ptr C'GLFWwindow -> IO Bool
glfwShouldExit window = do
  a <- c'glfwWindowShouldClose window
  if a == 1
    then return True
    else do
      b <- c'glfwGetKey window c'GLFW_KEY_Q
      return $ b == c'GLFW_PRESS || b == c'GLFW_REPEAT



glfwCreateWindowSurface :: VkInstance -> Ptr C'GLFWwindow -> IO VkSurfaceKHR
glfwCreateWindowSurface inst window =
  alloca $ \ptr -> do
    res <- c'glfwCreateWindowSurface inst window nullPtr ptr
    case res of
      VK_SUCCESS -> peek ptr
      _          -> fail $ "glfwCreateWindowSurface: error #" <> show res



data Score a = Score Int a

unscore :: Score a -> a
unscore (Score _ a) = a

instance Eq (Score a) where
  Score a _ == Score b _ = a == b

instance Ord (Score a) where
  Score a _ `compare` Score b _ = a `compare` b

-- | Ideal target is an integrated GPU.
getDeviceTypeScore :: VkPhysicalDevice -> IO Int
getDeviceTypeScore phys = do
  alloca $ \ptr -> do
    vkGetPhysicalDeviceProperties phys ptr

    type_ <- peek $ Off.offset @"deviceType" ptr
    pure $ case type_ of
             VK_PHYSICAL_DEVICE_TYPE_INTEGRATED_GPU -> 512
             VK_PHYSICAL_DEVICE_TYPE_DISCRETE_GPU   -> 256
             _                                      -> 1

queryDeviceQueueSupport :: VkPhysicalDevice -> (Word32 -> Ptr VkQueueFamilyProperties -> IO a) -> IO [a]
queryDeviceQueueSupport phys f =
  alloca $ \lenPtr -> do
    vkGetPhysicalDeviceQueueFamilyProperties phys lenPtr nullPtr
    len <- peek lenPtr
    if len <= 0
      then pure []
      else
        allocaArray (fromIntegral len) $ \arrPtr -> do
          vkGetPhysicalDeviceQueueFamilyProperties phys lenPtr arrPtr

          pure <$> f len arrPtr



getPhysicalDeviceSurfaceSupport :: VK_KHR_surface -> VkPhysicalDevice -> Word32 -> VkSurfaceKHR -> IO VkBool32
getPhysicalDeviceSurfaceSupport vk_KHR_surface phys qfam surf =
  alloca $ \ptr -> do
    res <- vkGetPhysicalDeviceSurfaceSupportKHR vk_KHR_surface phys qfam surf ptr
    case res of
      VK_SUCCESS                    -> peek ptr
      VK_ERROR_OUT_OF_HOST_MEMORY   -> fail "vkGetPhysicalDeviceSurfaceSupportKHR: out of host memory"
      VK_ERROR_OUT_OF_DEVICE_MEMORY -> fail "vkGetPhysicalDeviceSurfaceSupportKHR: out of device memory"
      VK_ERROR_SURFACE_LOST_KHR     -> fail "vkGetPhysicalDeviceSurfaceSupportKHR: surface lost"
      _                             -> fail $ "vkGetPhysicalDeviceSurfaceSupportKHR: error #" <> show res

data SwapExtent =
       SwapExtent
         { swapExtentImageCount       :: Word32
         , swapExtentMinExtentWidth   :: Word32
         , swapExtentMinExtentHeight  :: Word32
         , swapExtentMaxExtentWidth   :: Word32
         , swapExtentMaxExtentHeight  :: Word32
         , swapExtentCurrentTransform :: VkSurfaceTransformFlagBitsKHR
         }

getPhysicalDeviceSurfaceCapabilities :: VK_KHR_surface -> VkPhysicalDevice -> VkSurfaceKHR -> IO SwapExtent
getPhysicalDeviceSurfaceCapabilities vk_KHR_surface phys surf =
  alloca $ \ptr -> do
    res <- vkGetPhysicalDeviceSurfaceCapabilitiesKHR vk_KHR_surface phys surf ptr
    case res of
      VK_SUCCESS                    -> do
        minCount <- peek $ Off.offset @"minImageCount" ptr
        maxCount <- peek $ Off.offset @"maxImageCount" ptr
        minWidth  <- peek . Off.offset @"width"  $ Off.offset @"minImageExtent" ptr
        minHeight <- peek . Off.offset @"height" $ Off.offset @"minImageExtent" ptr
        maxWidth  <- peek . Off.offset @"width"  $ Off.offset @"maxImageExtent" ptr
        maxHeight <- peek . Off.offset @"height" $ Off.offset @"maxImageExtent" ptr
        transform <- peek $ Off.offset @"currentTransform" ptr
        return SwapExtent
                 { swapExtentImageCount       = if maxCount == minCount
                                                  then minCount
                                                  else minCount + 1
                 , swapExtentMinExtentWidth   = minWidth
                 , swapExtentMinExtentHeight  = minHeight
                 , swapExtentMaxExtentWidth   = maxWidth
                 , swapExtentMaxExtentHeight  = maxHeight
                 , swapExtentCurrentTransform = transform
                 }
      VK_ERROR_OUT_OF_HOST_MEMORY   -> fail "vkGetPhysicalDeviceSurfaceCapabilitiesKHR: out of host memory"
      VK_ERROR_OUT_OF_DEVICE_MEMORY -> fail "vkGetPhysicalDeviceSurfaceCapabilitiesKHR: out of device memory"
      VK_ERROR_SURFACE_LOST_KHR     -> fail "vkGetPhysicalDeviceSurfaceCapabilitiesKHR: surface lost"
      _                             -> fail $ "vkGetPhysicalDeviceSurfaceCapabilitiesKHR: error #" <> show res

data SwapFormat =
       SwapFormat
         { swapFormatFormat     :: VkFormat
         , swapFormatColorSpace :: VkColorSpaceKHR
         }

getPhysicalDeviceSurfaceFormat :: VK_KHR_surface -> VkPhysicalDevice -> VkSurfaceKHR -> IO SwapFormat
getPhysicalDeviceSurfaceFormat vk_KHR_surface phys surf =
  alloca $ \lenPtr -> do
    res1 <- vkGetPhysicalDeviceSurfaceFormatsKHR vk_KHR_surface phys surf lenPtr nullPtr
    case res1 of
      VK_SUCCESS                    -> do
        len <- peek lenPtr
        when (len <= 0) $
          fail "vkGetPhysicalDeviceSurfaceFormatsKHR: non-positive array length"

        allocaArray (fromIntegral len) $ \arrPtr -> do
          res2 <- vkGetPhysicalDeviceSurfaceFormatsKHR vk_KHR_surface phys surf lenPtr arrPtr
          case res2 of
            VK_SUCCESS                    -> do
              let go acc n
                    | n <= 0    = return acc
                    | otherwise = do
                        format <- peek . Off.offset @"format"     $ advancePtr arrPtr n
                        space  <- peek . Off.offset @"colorSpace" $ advancePtr arrPtr n
                        if format == VK_FORMAT_B8G8R8A8_SRGB && space == VK_COLOR_SPACE_SRGB_NONLINEAR_KHR
                          then go (SwapFormat format space) (n - 1)
                          else go acc    (n - 1)

              defFormat <- peek $ Off.offset @"format"     arrPtr
              defSpace  <- peek $ Off.offset @"colorSpace" arrPtr
              go (SwapFormat defFormat defSpace) (fromIntegral len - 1 :: Int)

            VK_INCOMPLETE                 -> fail "vkGetPhysicalDeviceSurfaceFormatsKHR: incomplete"
            VK_ERROR_OUT_OF_HOST_MEMORY   -> fail "vkGetPhysicalDeviceSurfaceFormatsKHR: out of host memory"
            VK_ERROR_OUT_OF_DEVICE_MEMORY -> fail "vkGetPhysicalDeviceSurfaceFormatsKHR: out of device memory"
            VK_ERROR_SURFACE_LOST_KHR     -> fail "vkGetPhysicalDeviceSurfaceFormatsKHR: surface lost"
            _                             -> fail $ "vkGetPhysicalDeviceSurfaceFormatsKHR: error #" <> show res2

      VK_INCOMPLETE                 -> fail "vkGetPhysicalDeviceSurfaceFormatsKHR: incomplete"
      VK_ERROR_OUT_OF_HOST_MEMORY   -> fail "vkGetPhysicalDeviceSurfaceFormatsKHR: out of host memory"
      VK_ERROR_OUT_OF_DEVICE_MEMORY -> fail "vkGetPhysicalDeviceSurfaceFormatsKHR: out of device memory"
      VK_ERROR_SURFACE_LOST_KHR     -> fail "vkGetPhysicalDeviceSurfaceFormatsKHR: surface lost"
      _                             -> fail $ "vkGetPhysicalDeviceSurfaceFormatsKHR: error #" <> show res1

getPhysicalDeviceSurfacePresentMode :: VK_KHR_surface -> VkPhysicalDevice -> VkSurfaceKHR -> IO VkPresentModeKHR
getPhysicalDeviceSurfacePresentMode vk_KHR_surface phys surf =
  alloca $ \lenPtr -> do
    res1 <- vkGetPhysicalDeviceSurfacePresentModesKHR vk_KHR_surface phys surf lenPtr nullPtr
    case res1 of
      VK_SUCCESS                    -> do
        len <- peek lenPtr
        when (len <= 0) $
          fail "vkGetPhysicalDeviceSurfacePresentModesKHR: non-positive array length"

        allocaArray (fromIntegral len) $ \arrPtr -> do
          res2 <- vkGetPhysicalDeviceSurfacePresentModesKHR vk_KHR_surface phys surf lenPtr arrPtr
          case res2 of
            VK_SUCCESS                    -> pure VK_PRESENT_MODE_FIFO_KHR
           {- let go acc n
                    | n < 0     = return acc
                    | otherwise = do
                        format <- peek $ advancePtr arrPtr n
                        if format == VK_PRESENT_MODE_MAILBOX_KHR
                          then go format (n - 1)
                          else go acc    (n - 1)

              go VK_PRESENT_MODE_FIFO_KHR (fromIntegral len - 1 :: Int) -}

            VK_INCOMPLETE                 -> fail "vkGetPhysicalDeviceSurfacePresentModesKHR: incomplete"
            VK_ERROR_OUT_OF_HOST_MEMORY   -> fail "vkGetPhysicalDeviceSurfacePresentModesKHR: out of host memory"
            VK_ERROR_OUT_OF_DEVICE_MEMORY -> fail "vkGetPhysicalDeviceSurfacePresentModesKHR: out of device memory"
            VK_ERROR_SURFACE_LOST_KHR     -> fail "vkGetPhysicalDeviceSurfacePresentModesKHR: surface lost"
            _                             -> fail $ "vkGetPhysicalDeviceSurfacePresentModesKHR: error #" <> show res2

      VK_INCOMPLETE                 -> fail "vkGetPhysicalDeviceSurfacePresentModesKHR: incomplete"
      VK_ERROR_OUT_OF_HOST_MEMORY   -> fail "vkGetPhysicalDeviceSurfacePresentModesKHR: out of host memory"
      VK_ERROR_OUT_OF_DEVICE_MEMORY -> fail "vkGetPhysicalDeviceSurfacePresentModesKHR: out of device memory"
      VK_ERROR_SURFACE_LOST_KHR     -> fail "vkGetPhysicalDeviceSurfacePresentModesKHR: surface lost"
      _                             -> fail $ "vkGetPhysicalDeviceSurfacePresentModesKHR: error #" <> show res1




data SwapParams =
       SwapParams
         { swapParamsCapabilities :: SwapExtent
         , swapParamsFormat       :: SwapFormat
         , swapParamsPresentMode  :: VkPresentModeKHR
         }

queryDeviceSwapParams :: VK_KHR_surface -> VkPhysicalDevice -> VkSurfaceKHR -> IO SwapParams
queryDeviceSwapParams vk_KHR_surface phys surf = do
  SwapParams
    <$> getPhysicalDeviceSurfaceCapabilities vk_KHR_surface phys surf
    <*> getPhysicalDeviceSurfaceFormat vk_KHR_surface phys surf
    <*> getPhysicalDeviceSurfacePresentMode vk_KHR_surface phys surf



data QueueFamilies = SingleQueue Word32
                   | MultipleQueues
                       { _graphics :: Word32
                       , _present  :: Word32
                       }

evaluatePhysicalDevice
  :: VK_KHR_surface
  -> VkSurfaceKHR
  -> VkPhysicalDevice
  -> [CString]
  -> IO [Score (VkPhysicalDevice, QueueFamilies)]
evaluatePhysicalDevice vk_KHR_surface surf phys exts = do
  remExts <- checkDeviceExtensionSupport phys exts
  case remExts of
    _:_ -> return []
    []  -> do

      typeScore <- getDeviceTypeScore phys

      fmap mconcat $
        queryDeviceQueueSupport phys $ \len arrPtr ->
          let go (mayGraphics, mayPresent) n
                | n >= len  =
                    return $
                      case (mayGraphics, mayPresent) of
                        (Just graphics, Just present) -> [Score typeScore (phys, MultipleQueues graphics present)]
                        _                             -> []

                | otherwise = do
                    queueFlags <- peek . Off.offset @"queueFlags" $ advancePtr arrPtr (fromIntegral n)
                    canPresentRaw <- getPhysicalDeviceSurfaceSupport vk_KHR_surface phys n surf
                    let isGraphics = queueFlags .&. VK_QUEUE_GRAPHICS_BIT == 1
                        canPresent = canPresentRaw == VK_TRUE

                    if isGraphics
                      then if canPresent
                             then return [Score typeScore (phys, SingleQueue n)]
                             else go (Just $ fromMaybe n mayGraphics, mayPresent) (n + 1)

                      else if canPresent
                             then go (mayGraphics, Just $ fromMaybe n mayPresent) (n + 1)
                             else go (mayGraphics, mayPresent) (n + 1)

          in go (Nothing, Nothing) 0

choosePhysicalDevice
  :: VK_KHR_surface -> VkInstance -> VkSurfaceKHR -> IO (VkPhysicalDevice, QueueFamilies, [CString])
choosePhysicalDevice vk_KHR_surface inst surf = do
  alloca $ \lenPtr -> do
    res1 <- vkEnumeratePhysicalDevices inst lenPtr nullPtr
    case res1 of
      VK_SUCCESS -> do
        len <- peek lenPtr
        when (len <= 0) $
          fail "vkEnumeratePhysicalDevices: output list has no elements"

        allocaArray (fromIntegral len) $ \arrPtr -> do
          res2 <- vkEnumeratePhysicalDevices inst lenPtr arrPtr
          case res2 of
            VK_SUCCESS -> do
              let exts = [VK_KHR_SWAPCHAIN_EXTENSION_NAME]

              options <- for [0 .. fromIntegral len - 1 :: Int] $ \n -> do
                           phys <- peekElemOff arrPtr n
                           evaluatePhysicalDevice vk_KHR_surface surf phys exts

              case mconcat options of
                [] -> fail "choosePhysicalDevice: no suitable devices"
                os -> let (phys, qfam) = unscore $ maximum os
                      in return (phys, qfam, exts)

            VK_INCOMPLETE                  -> fail "vkEnumeratePhysicalDevices: incomplete"
            VK_ERROR_OUT_OF_HOST_MEMORY    -> fail "vkEnumeratePhysicalDevices: out of host memory"
            VK_ERROR_OUT_OF_DEVICE_MEMORY  -> fail "vkEnumeratePhysicalDevices: out of device memory"
            VK_ERROR_INITIALIZATION_FAILED -> fail "vkEnumeratePhysicalDevices: initialization failed"
            _                              -> fail $ "vkEnumeratePhysicalDevices: error #" <> show res2

      VK_INCOMPLETE                  -> fail "vkEnumeratePhysicalDevices: incomplete"
      VK_ERROR_OUT_OF_HOST_MEMORY    -> fail "vkEnumeratePhysicalDevices: out of host memory"
      VK_ERROR_OUT_OF_DEVICE_MEMORY  -> fail "vkEnumeratePhysicalDevices: out of device memory"
      VK_ERROR_INITIALIZATION_FAILED -> fail "vkEnumeratePhysicalDevices: initialization failed"
      _                              -> fail $ "vkEnumeratePhysicalDevices: error #" <> show res1



createDevice :: VkPhysicalDevice -> QueueFamilies -> [CString] -> IO VkDevice
createDevice phys qfam exts = do
  let withQueues f =
        withArray [0.5] $ \prioPtr ->
          case qfam of
            SingleQueue n      ->
              allocaArray 1 $ \(quePtr :: Ptr VkDeviceQueueCreateInfo) -> do
                poke (Off.offset @"sType"            quePtr) VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO
                poke (Off.offset @"pNext"            quePtr) nullPtr
                poke (Off.offset @"flags"            quePtr) 0
                poke (Off.offset @"queueFamilyIndex" quePtr) n
                poke (Off.offset @"queueCount"       quePtr) 1
                poke (Off.offset @"pQueuePriorities" quePtr) prioPtr

                f 1 quePtr

            MultipleQueues g p ->
              allocaArray 2 $ \quePtr -> do
                poke (Off.offset @"sType"                         quePtr  ) VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO
                poke (Off.offset @"pNext"                         quePtr  ) nullPtr
                poke (Off.offset @"flags"                         quePtr  ) 0
                poke (Off.offset @"queueFamilyIndex"              quePtr  ) g
                poke (Off.offset @"queueCount"                    quePtr  ) 1
                poke (Off.offset @"pQueuePriorities"              quePtr  ) prioPtr
                poke (Off.offset @"sType"            $ advancePtr quePtr 1) VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO
                poke (Off.offset @"pNext"            $ advancePtr quePtr 1) nullPtr
                poke (Off.offset @"flags"            $ advancePtr quePtr 1) 0
                poke (Off.offset @"queueFamilyIndex" $ advancePtr quePtr 1) p
                poke (Off.offset @"queueCount"       $ advancePtr quePtr 1) 1
                poke (Off.offset @"pQueuePriorities" $ advancePtr quePtr 1) prioPtr

                f 2 quePtr

  withQueues $ \queLen quePtr ->
    withArray exts $ \extPtr ->
      alloca $ \(infoPtr :: Ptr VkDeviceCreateInfo) -> do
        poke (Off.offset @"sType"                   infoPtr) VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO
        poke (Off.offset @"pNext"                   infoPtr) nullPtr
        poke (Off.offset @"flags"                   infoPtr) 0
        poke (Off.offset @"queueCreateInfoCount"    infoPtr) queLen
        poke (Off.offset @"pQueueCreateInfos"       infoPtr) quePtr
        poke (Off.offset @"enabledLayerCount"       infoPtr) 0
        poke (Off.offset @"ppEnabledLayerNames"     infoPtr) nullPtr
        poke (Off.offset @"enabledExtensionCount"   infoPtr) (fromIntegral $ length exts)
        poke (Off.offset @"ppEnabledExtensionNames" infoPtr) (castPtr extPtr)
        poke (Off.offset @"pEnabledFeatures"        infoPtr) nullPtr

        alloca $ \ptr -> do
          res <- vkCreateDevice phys infoPtr nullPtr ptr
          case res of
            VK_SUCCESS                     -> peek ptr
            VK_ERROR_OUT_OF_HOST_MEMORY    -> fail "vkCreateDevice: out of host memory"
            VK_ERROR_OUT_OF_DEVICE_MEMORY  -> fail "vkCreateDevice: out of device memory"
            VK_ERROR_INITIALIZATION_FAILED -> fail "vkCreateDevice: initialization failed"
            VK_ERROR_EXTENSION_NOT_PRESENT -> fail "vkCreateDevice: extension not present"
            VK_ERROR_FEATURE_NOT_PRESENT   -> fail "vkCreateDevice: feature not present"
            VK_ERROR_TOO_MANY_OBJECTS      -> fail "vkCreateDevice: too many objects"
            VK_ERROR_DEVICE_LOST           -> fail "vkCreateDevice: device lost"
            _                              -> fail $ "vkCreateDevice: error #" <> show res



getPresentQueue :: VkDevice -> QueueFamilies -> IO VkQueue
getPresentQueue dev qfam = do
  let queueFamilyIndex = case qfam of
                           SingleQueue n -> n
                           MultipleQueues _ p -> p
  alloca $ \ptr -> do
    vkGetDeviceQueue dev queueFamilyIndex 0 ptr
    peek ptr



createSwapchain
  :: VK_KHR_swapchain -> (Word32, Word32) -> VkSurfaceKHR -> QueueFamilies -> SwapParams -> VkDevice -> IO VkSwapchainKHR
createSwapchain vk_KHR_swapchain (w, h) surf qfam swapParams dev = do
  let withQueues f =
        case qfam of
          SingleQueue q      -> withArray [q] $ \quePtr -> do
                                  f VK_SHARING_MODE_EXCLUSIVE 1 quePtr

          MultipleQueues g p -> withArray [g, p] $ \quePtr ->
                                  f VK_SHARING_MODE_CONCURRENT 2 quePtr

  withQueues $ \sharingMode queLen quePtr ->
    alloca $ \(infoPtr :: Ptr VkSwapchainCreateInfoKHR) -> do
      poke (Off.offset @"sType"                              infoPtr) VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR
      poke (Off.offset @"pNext"                              infoPtr) nullPtr
      poke (Off.offset @"flags"                              infoPtr) 0
      poke (Off.offset @"surface"                            infoPtr) surf
      poke (Off.offset @"minImageCount"                      infoPtr) . getField @"swapExtentImageCount" $ getField @"swapParamsCapabilities" swapParams
      poke (Off.offset @"imageFormat"                        infoPtr) . getField @"swapFormatFormat"     $ getField @"swapParamsFormat" swapParams
      poke (Off.offset @"imageColorSpace"                    infoPtr) . getField @"swapFormatColorSpace" $ getField @"swapParamsFormat" swapParams
      poke (Off.offset @"width"  $ Off.offset @"imageExtent" infoPtr) w
      poke (Off.offset @"height" $ Off.offset @"imageExtent" infoPtr) h
      poke (Off.offset @"imageArrayLayers"                   infoPtr) 1
      poke (Off.offset @"imageUsage"                         infoPtr) VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT
      poke (Off.offset @"imageSharingMode"                   infoPtr) sharingMode
      poke (Off.offset @"queueFamilyIndexCount"              infoPtr) queLen
      poke (Off.offset @"pQueueFamilyIndices"                infoPtr) quePtr
      poke (Off.offset @"preTransform"                       infoPtr) . getField @"swapExtentCurrentTransform" $ getField @"swapParamsCapabilities" swapParams
      poke (Off.offset @"compositeAlpha"                     infoPtr) VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR
      poke (Off.offset @"presentMode"                        infoPtr) $ getField @"swapParamsPresentMode" swapParams
      poke (Off.offset @"clipped"                            infoPtr) VK_TRUE
      poke (Off.offset @"oldSwapchain"                       infoPtr) VK_NULL_HANDLE

      alloca $ \ptr -> do
        res <- vkCreateSwapchainKHR vk_KHR_swapchain dev infoPtr nullPtr ptr
        case res of
          VK_SUCCESS                         -> peek ptr
          VK_ERROR_OUT_OF_HOST_MEMORY        -> fail "vkCreateSwapchainKHR: out of host memory"
          VK_ERROR_OUT_OF_DEVICE_MEMORY      -> fail "vkCreateSwapchainKHR: out of device memory"
          VK_ERROR_DEVICE_LOST               -> fail "vkCreateSwapchainKHR: device lost"
          VK_ERROR_SURFACE_LOST_KHR          -> fail "vkCreateSwapchainKHR: surface lost"
          VK_ERROR_NATIVE_WINDOW_IN_USE_KHR  -> fail "vkCreateSwapchainKHR: native window in use"
          VK_ERROR_INITIALIZATION_FAILED     -> fail "vkCreateSwapchainKHR: initialization failed"
          _                                  -> fail $ "vkCreateSwapchainKHR: error #" <> show res



getSwapchainImages :: VK_KHR_swapchain -> VkDevice -> VkSwapchainKHR -> IO [VkImage]
getSwapchainImages vk_KHR_swapchain dev swch =
  alloca $ \lenPtr -> do
    res1 <- vkGetSwapchainImagesKHR vk_KHR_swapchain dev swch lenPtr nullPtr
    case res1 of
      VK_SUCCESS -> do
        len <- peek lenPtr
        when (len <= 0) $
          fail "vkGetSwapchainImagesKHR: non-positive array length"

        allocaArray (fromIntegral len) $ \arrPtr -> do
          res2 <- vkGetSwapchainImagesKHR vk_KHR_swapchain dev swch lenPtr arrPtr
          case res2 of
            VK_SUCCESS -> peekArray (fromIntegral len) arrPtr
            VK_INCOMPLETE                 -> fail "vkGetSwapchainImages: incomplete"
            VK_ERROR_OUT_OF_HOST_MEMORY   -> fail "vkGetSwapchainImages: out of host memory"
            VK_ERROR_OUT_OF_DEVICE_MEMORY -> fail "vkGetSwapchainImages: out of device memory"
            _                             -> fail $ "vkGetSwapchainImages: error #" <> show res2

      VK_INCOMPLETE                 -> fail "vkGetSwapchainImages: incomplete"
      VK_ERROR_OUT_OF_HOST_MEMORY   -> fail "vkGetSwapchainImages: out of host memory"
      VK_ERROR_OUT_OF_DEVICE_MEMORY -> fail "vkGetSwapchainImages: out of device memory"
      _                             -> fail $ "vkGetSwapchainImages: error #" <> show res1



createImageView :: VkDevice -> SwapParams -> VkImage -> IO VkImageView
createImageView dev swapParams img = do
  alloca $ \(infoPtr :: Ptr VkImageViewCreateInfo) -> do
    poke (Off.offset @"sType"                                           infoPtr) VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO
    poke (Off.offset @"pNext"                                           infoPtr) nullPtr
    poke (Off.offset @"flags"                                           infoPtr) 0
    poke (Off.offset @"image"                                           infoPtr) img
    poke (Off.offset @"viewType"                                        infoPtr) VK_IMAGE_VIEW_TYPE_2D
    poke (Off.offset @"format"                                          infoPtr) . getField @"swapFormatFormat" $ getField @"swapParamsFormat" swapParams
    poke (Off.offset @"r" $ Off.offset @"components"                    infoPtr) VK_COMPONENT_SWIZZLE_IDENTITY
    poke (Off.offset @"g" $ Off.offset @"components"                    infoPtr) VK_COMPONENT_SWIZZLE_IDENTITY
    poke (Off.offset @"b" $ Off.offset @"components"                    infoPtr) VK_COMPONENT_SWIZZLE_IDENTITY
    poke (Off.offset @"a" $ Off.offset @"components"                    infoPtr) VK_COMPONENT_SWIZZLE_IDENTITY
    poke (Off.offset @"aspectMask"     $ Off.offset @"subresourceRange" infoPtr) VK_IMAGE_ASPECT_COLOR_BIT
    poke (Off.offset @"baseMipLevel"   $ Off.offset @"subresourceRange" infoPtr) 0
    poke (Off.offset @"levelCount"     $ Off.offset @"subresourceRange" infoPtr) 1
    poke (Off.offset @"baseArrayLayer" $ Off.offset @"subresourceRange" infoPtr) 0
    poke (Off.offset @"layerCount"     $ Off.offset @"subresourceRange" infoPtr) 1

    alloca $ \ptr -> do
      res <- vkCreateImageView dev infoPtr nullPtr ptr
      case res of
        VK_SUCCESS                                  -> peek ptr
        VK_ERROR_OUT_OF_HOST_MEMORY                 -> fail "vkCreateImageView: out of host memory"
        VK_ERROR_OUT_OF_DEVICE_MEMORY               -> fail "vkCreateImageView: out of device memory"
        _                                           -> fail $ "vkCreateImageView: error #" <> show res



brackets :: [IO a] -> (a -> IO b) -> ([a] -> IO c) -> IO c
brackets    []  _   aft = aft []
brackets (a:as) bef aft = bracket a bef $ \c -> brackets as bef $ aft . (:) c

withImageViews :: VkDevice -> SwapParams -> [VkImage] -> ([VkImageView] -> IO a) -> IO a
withImageViews dev swapParams imgs =
  brackets (createImageView dev swapParams <$> imgs) $ \view -> vkDestroyImageView dev view nullPtr



createShaderModule :: VkDevice -> Int -> Ptr Word32 -> IO VkShaderModule
createShaderModule dev len dataPtr = do
  alloca $ \(infoPtr :: Ptr VkShaderModuleCreateInfo) -> do
    poke (Off.offset @"sType"    infoPtr) VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO
    poke (Off.offset @"pNext"    infoPtr) nullPtr
    poke (Off.offset @"flags"    infoPtr) 0
    poke (Off.offset @"codeSize" infoPtr) (fromIntegral len)
    poke (Off.offset @"pCode"    infoPtr) dataPtr

    alloca $ \ptr -> do
      res <- vkCreateShaderModule dev infoPtr nullPtr ptr
      case res of
        VK_SUCCESS                    -> peek ptr
        VK_ERROR_OUT_OF_HOST_MEMORY   -> fail "vkCreateShaderModule: out of host memory"
        VK_ERROR_OUT_OF_DEVICE_MEMORY -> fail "vkCreateShaderModule: out of device memory"
        _                             -> fail $ "vkCreateShaderModule: error #" <> show res


withShaderStages :: VkDevice -> (Word32 -> Ptr VkPipelineShaderStageCreateInfo -> IO a) -> IO a
withShaderStages dev f =
  bracket (createShaderModule dev vertexShaderSize vertexShaderData) (\vert -> vkDestroyShaderModule dev vert nullPtr) $ \vert ->
    bracket (createShaderModule dev fragmentShaderSize fragmentShaderData) (\frag -> vkDestroyShaderModule dev frag nullPtr) $ \frag ->
      withCString "main" $ \namePtr ->
        allocaArray 2 $ \ptr -> do
          poke (Off.offset @"sType"                            ptr  ) VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO
          poke (Off.offset @"pNext"                            ptr  ) nullPtr
          poke (Off.offset @"flags"                            ptr  ) 0
          poke (Off.offset @"stage"                            ptr  ) VK_SHADER_STAGE_VERTEX_BIT
          poke (Off.offset @"module"                           ptr  ) vert
          poke (Off.offset @"pName"                            ptr  ) (castPtr namePtr)
          poke (Off.offset @"pSpecializationInfo"              ptr  ) nullPtr
          poke (Off.offset @"sType"               $ advancePtr ptr 1) VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO
          poke (Off.offset @"pNext"               $ advancePtr ptr 1) nullPtr
          poke (Off.offset @"flags"               $ advancePtr ptr 1) 0
          poke (Off.offset @"stage"               $ advancePtr ptr 1) VK_SHADER_STAGE_FRAGMENT_BIT
          poke (Off.offset @"module"              $ advancePtr ptr 1) frag
          poke (Off.offset @"pName"               $ advancePtr ptr 1) (castPtr namePtr)
          poke (Off.offset @"pSpecializationInfo" $ advancePtr ptr 1) nullPtr

          f 2 ptr

withDynamicState :: (Ptr VkPipelineDynamicStateCreateInfo -> IO a) -> IO a
withDynamicState f =
  withArray [VK_DYNAMIC_STATE_VIEWPORT, VK_DYNAMIC_STATE_SCISSOR] $ \dataPtr ->
    alloca $ \ptr -> do
      poke (Off.offset @"sType"             ptr) VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO
      poke (Off.offset @"pNext"             ptr) nullPtr
      poke (Off.offset @"flags"             ptr) 0
      poke (Off.offset @"dynamicStateCount" ptr) 2
      poke (Off.offset @"pDynamicStates"    ptr) dataPtr

      f ptr

withVertexInputState :: (Ptr VkPipelineVertexInputStateCreateInfo -> IO a) -> IO a
withVertexInputState f =
  alloca $ \bidePtr -> do
    poke (Off.offset @"binding"   bidePtr) 0
    poke (Off.offset @"stride"    bidePtr) 20
    poke (Off.offset @"inputRate" bidePtr) VK_VERTEX_INPUT_RATE_VERTEX

    allocaArray 2 $ \atdePtr -> do
      poke (Off.offset @"location"              atdePtr  ) 0
      poke (Off.offset @"binding"               atdePtr  ) 0
      poke (Off.offset @"format"                atdePtr  ) VK_FORMAT_R32G32_SFLOAT
      poke (Off.offset @"offset"                atdePtr  ) 0
      poke (Off.offset @"location" $ advancePtr atdePtr 1) 1
      poke (Off.offset @"binding"  $ advancePtr atdePtr 1) 0
      poke (Off.offset @"format"   $ advancePtr atdePtr 1) VK_FORMAT_R32G32B32_SFLOAT
      poke (Off.offset @"offset"   $ advancePtr atdePtr 1) 8

      alloca $ \ptr -> do
        poke (Off.offset @"sType"                           ptr) VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO
        poke (Off.offset @"pNext"                           ptr) nullPtr
        poke (Off.offset @"flags"                           ptr) 0
        poke (Off.offset @"vertexBindingDescriptionCount"   ptr) 1
        poke (Off.offset @"pVertexBindingDescriptions"      ptr) bidePtr
        poke (Off.offset @"vertexAttributeDescriptionCount" ptr) 2
        poke (Off.offset @"pVertexAttributeDescriptions"    ptr) atdePtr

        f ptr

withInputAssemblyState :: (Ptr VkPipelineInputAssemblyStateCreateInfo -> IO a) -> IO a
withInputAssemblyState f =
  alloca $ \ptr -> do
    poke (Off.offset @"sType"                  ptr) VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO
    poke (Off.offset @"pNext"                  ptr) nullPtr
    poke (Off.offset @"flags"                  ptr) 0
    poke (Off.offset @"topology"               ptr) VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST
    poke (Off.offset @"primitiveRestartEnable" ptr) VK_FALSE

    f ptr

withViewport :: (Word32, Word32) -> (Ptr VkViewport -> IO a) -> IO a
withViewport (w, h) f =
  alloca $ \ptr -> do
    poke (Off.offset @"x"        ptr) 0
    poke (Off.offset @"y"        ptr) 0
    poke (Off.offset @"width"    ptr) (fromIntegral w)
    poke (Off.offset @"height"   ptr) (fromIntegral h)
    poke (Off.offset @"minDepth" ptr) 0
    poke (Off.offset @"maxDepth" ptr) 1
    
    f ptr

withScissor :: (Word32, Word32) -> (Ptr VkRect2D -> IO a) -> IO a
withScissor (w, h) f =
  alloca $ \ptr -> do
    poke (Off.offset @"x" $ Off.offset @"offset"      ptr) 0
    poke (Off.offset @"y" $ Off.offset @"offset"      ptr) 0
    poke (Off.offset @"width"  $ Off.offset @"extent" ptr) w
    poke (Off.offset @"height" $ Off.offset @"extent" ptr) h

    f ptr

withViewportState :: (Ptr VkPipelineViewportStateCreateInfo -> IO a) -> IO a
withViewportState f =
  alloca $ \ptr -> do
    poke (Off.offset @"sType"         ptr) VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO
    poke (Off.offset @"pNext"         ptr) nullPtr
    poke (Off.offset @"flags"         ptr) 0
    poke (Off.offset @"viewportCount" ptr) 1
    poke (Off.offset @"pViewports"    ptr) nullPtr
    poke (Off.offset @"scissorCount"  ptr) 1
    poke (Off.offset @"pScissors"     ptr) nullPtr

    f ptr

withRasterizationState :: (Ptr VkPipelineRasterizationStateCreateInfo -> IO a) -> IO a
withRasterizationState f =
  alloca $ \ptr -> do
    poke (Off.offset @"sType"                   ptr) VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO
    poke (Off.offset @"pNext"                   ptr) nullPtr
    poke (Off.offset @"flags"                   ptr) 0
    poke (Off.offset @"depthClampEnable"        ptr) VK_FALSE
    poke (Off.offset @"rasterizerDiscardEnable" ptr) VK_FALSE
    poke (Off.offset @"polygonMode"             ptr) VK_POLYGON_MODE_FILL
    poke (Off.offset @"cullMode"                ptr) VK_CULL_MODE_BACK_BIT
    poke (Off.offset @"frontFace"               ptr) VK_FRONT_FACE_CLOCKWISE
    poke (Off.offset @"depthBiasEnable"         ptr) VK_FALSE
    poke (Off.offset @"depthBiasConstantFactor" ptr) 0
    poke (Off.offset @"depthBiasClamp"          ptr) 0
    poke (Off.offset @"depthBiasSlopeFactor"    ptr) 0
    poke (Off.offset @"lineWidth"               ptr) 1

    f ptr

withMultisampleState :: (Ptr VkPipelineMultisampleStateCreateInfo -> IO a) -> IO a
withMultisampleState f =
  alloca $ \ptr -> do
    poke (Off.offset @"sType"                 ptr) VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO
    poke (Off.offset @"pNext"                 ptr) nullPtr
    poke (Off.offset @"flags"                 ptr) 0
    poke (Off.offset @"rasterizationSamples"  ptr) VK_SAMPLE_COUNT_1_BIT
    poke (Off.offset @"sampleShadingEnable"   ptr) VK_FALSE
    poke (Off.offset @"minSampleShading"      ptr) 1
    poke (Off.offset @"pSampleMask"           ptr) nullPtr
    poke (Off.offset @"alphaToCoverageEnable" ptr) VK_FALSE
    poke (Off.offset @"alphaToOneEnable"      ptr) VK_FALSE

    f ptr

withColorBlendState :: (Ptr VkPipelineColorBlendStateCreateInfo -> IO a) -> IO a
withColorBlendState f =
  alloca $ \attaPtr -> do
    poke (Off.offset @"blendEnable"         attaPtr) VK_FALSE
    poke (Off.offset @"srcColorBlendFactor" attaPtr) VK_BLEND_FACTOR_ONE
    poke (Off.offset @"dstColorBlendFactor" attaPtr) VK_BLEND_FACTOR_ZERO
    poke (Off.offset @"colorBlendOp"        attaPtr) VK_BLEND_OP_ADD
    poke (Off.offset @"srcAlphaBlendFactor" attaPtr) VK_BLEND_FACTOR_ONE
    poke (Off.offset @"dstAlphaBlendFactor" attaPtr) VK_BLEND_FACTOR_ZERO
    poke (Off.offset @"alphaBlendOp"        attaPtr) VK_BLEND_OP_ADD
    poke (Off.offset @"colorWriteMask"      attaPtr) $ VK_COLOR_COMPONENT_R_BIT .|. VK_COLOR_COMPONENT_G_BIT
                                               .|. VK_COLOR_COMPONENT_B_BIT .|. VK_COLOR_COMPONENT_A_BIT
    alloca $ \ptr -> do
      poke (Off.offset @"sType"                       ptr   ) VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO
      poke (Off.offset @"pNext"                       ptr   ) nullPtr
      poke (Off.offset @"flags"                       ptr   ) 0
      poke (Off.offset @"logicOpEnable"               ptr   ) VK_FALSE
      poke (Off.offset @"logicOp"                     ptr   ) VK_LOGIC_OP_COPY
      poke (Off.offset @"attachmentCount"             ptr   ) 1
      poke (Off.offset @"pAttachments"                ptr   ) attaPtr
      poke (Off.offset @"blendConstants"              ptr   ) 0
      poke (advancePtr (Off.offset @"blendConstants"  ptr) 1) 0
      poke (advancePtr (Off.offset @"blendConstants"  ptr) 2) 0
      poke (advancePtr (Off.offset @"blendConstants"  ptr) 3) 0

      f ptr



createPipelineLayout :: VkDevice -> IO VkPipelineLayout
createPipelineLayout dev =
  alloca $ \(infoPtr :: Ptr VkPipelineLayoutCreateInfo) -> do
    poke (Off.offset @"sType"                  infoPtr) VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO
    poke (Off.offset @"pNext"                  infoPtr) nullPtr
    poke (Off.offset @"flags"                  infoPtr) 0
    poke (Off.offset @"setLayoutCount"         infoPtr) 0
    poke (Off.offset @"pSetLayouts"            infoPtr) nullPtr
    poke (Off.offset @"pushConstantRangeCount" infoPtr) 0
    poke (Off.offset @"pPushConstantRanges"    infoPtr) nullPtr

    alloca $ \ptr -> do
      res <- vkCreatePipelineLayout dev infoPtr nullPtr ptr
      case res of
        VK_SUCCESS                    -> peek ptr
        VK_ERROR_OUT_OF_HOST_MEMORY   -> fail "vkCreatePipelineLayout: out of host memory"
        VK_ERROR_OUT_OF_DEVICE_MEMORY -> fail "vkCreatePipelineLayout: out of device memory"
        _                             -> fail $ "vkCreatePipelineLayout: error #" <> show res



createRenderPass :: SwapParams -> VkDevice -> IO VkRenderPass
createRenderPass swapParams dev = do
  alloca $ \attaPtr -> do
    poke (Off.offset @"flags"          attaPtr) 0
    poke (Off.offset @"format"         attaPtr) . getField @"swapFormatFormat" $ getField @"swapParamsFormat" swapParams
    poke (Off.offset @"samples"        attaPtr) VK_SAMPLE_COUNT_1_BIT
    poke (Off.offset @"loadOp"         attaPtr) VK_ATTACHMENT_LOAD_OP_CLEAR
    poke (Off.offset @"storeOp"        attaPtr) VK_ATTACHMENT_STORE_OP_STORE
    poke (Off.offset @"stencilLoadOp"  attaPtr) VK_ATTACHMENT_LOAD_OP_DONT_CARE
    poke (Off.offset @"stencilStoreOp" attaPtr) VK_ATTACHMENT_STORE_OP_DONT_CARE
    poke (Off.offset @"initialLayout"  attaPtr) VK_IMAGE_LAYOUT_UNDEFINED
    poke (Off.offset @"finalLayout"    attaPtr) VK_IMAGE_LAYOUT_PRESENT_SRC_KHR

    alloca $ \atrePtr -> do
      poke (Off.offset @"attachment" atrePtr) 0
      poke (Off.offset @"layout"     atrePtr) VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL

      alloca $ \subpPtr -> do
        poke (Off.offset @"flags"                   subpPtr) 0
        poke (Off.offset @"pipelineBindPoint"       subpPtr) VK_PIPELINE_BIND_POINT_GRAPHICS
        poke (Off.offset @"inputAttachmentCount"    subpPtr) 0
        poke (Off.offset @"pInputAttachments"       subpPtr) nullPtr
        poke (Off.offset @"colorAttachmentCount"    subpPtr) 1
        poke (Off.offset @"pColorAttachments"       subpPtr) atrePtr
        poke (Off.offset @"pResolveAttachments"     subpPtr) nullPtr
        poke (Off.offset @"pDepthStencilAttachment" subpPtr) nullPtr
        poke (Off.offset @"preserveAttachmentCount" subpPtr) 0
        poke (Off.offset @"pPreserveAttachments"    subpPtr) nullPtr

        alloca $ \sudePtr -> do
          poke (Off.offset @"srcSubpass"      sudePtr) VK_SUBPASS_EXTERNAL
          poke (Off.offset @"dstSubpass"      sudePtr) 0
          poke (Off.offset @"srcStageMask"    sudePtr) VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT
          poke (Off.offset @"dstStageMask"    sudePtr) VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT
          poke (Off.offset @"srcAccessMask"   sudePtr) 0
          poke (Off.offset @"dstAccessMask"   sudePtr) VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT
          poke (Off.offset @"dependencyFlags" sudePtr) 0

          alloca $ \(infoPtr :: Ptr VkRenderPassCreateInfo) -> do
            poke (Off.offset @"sType"           infoPtr) VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO
            poke (Off.offset @"pNext"           infoPtr) nullPtr
            poke (Off.offset @"flags"           infoPtr) 0
            poke (Off.offset @"attachmentCount" infoPtr) 1
            poke (Off.offset @"pAttachments"    infoPtr) attaPtr
            poke (Off.offset @"subpassCount"    infoPtr) 1
            poke (Off.offset @"pSubpasses"      infoPtr) subpPtr
            poke (Off.offset @"dependencyCount" infoPtr) 1
            poke (Off.offset @"pDependencies"   infoPtr) sudePtr

            alloca $ \ptr -> do
              res <- vkCreateRenderPass dev infoPtr nullPtr ptr
              case res of
                VK_SUCCESS                    -> peek ptr
                VK_ERROR_OUT_OF_HOST_MEMORY   -> fail "vkCreateRenderPass: out of host memory"
                VK_ERROR_OUT_OF_DEVICE_MEMORY -> fail "vkCreateRenderPass: out of device memory"
                _                             -> fail $ "vkCreateRenderPass: error #" <> show res



createGraphicsPipeline :: VkDevice -> VkPipelineLayout -> VkRenderPass -> IO VkPipeline
createGraphicsPipeline dev layout pass = do
  withShaderStages dev $ \shadLen shadPtr ->
    withVertexInputState $ \veinPtr ->
      withInputAssemblyState $ \inasPtr ->
        withViewportState $ \viewPtr ->
          withRasterizationState $ \rastPtr ->
            withMultisampleState $ \multPtr ->
              withColorBlendState $ \coblPtr ->
                withDynamicState $ \dynaPtr -> do
                  alloca $ \(infoPtr :: Ptr VkGraphicsPipelineCreateInfo) -> do
                    poke (Off.offset @"sType"               infoPtr) VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO
                    poke (Off.offset @"pNext"               infoPtr) nullPtr
                    poke (Off.offset @"flags"               infoPtr) 0
                    poke (Off.offset @"stageCount"          infoPtr) shadLen
                    poke (Off.offset @"pStages"             infoPtr) shadPtr
                    poke (Off.offset @"pVertexInputState"   infoPtr) veinPtr
                    poke (Off.offset @"pInputAssemblyState" infoPtr) inasPtr
                    poke (Off.offset @"pTessellationState"  infoPtr) nullPtr
                    poke (Off.offset @"pViewportState"      infoPtr) viewPtr
                    poke (Off.offset @"pRasterizationState" infoPtr) rastPtr
                    poke (Off.offset @"pMultisampleState"   infoPtr) multPtr
                    poke (Off.offset @"pDepthStencilState"  infoPtr) nullPtr
                    poke (Off.offset @"pColorBlendState"    infoPtr) coblPtr
                    poke (Off.offset @"pDynamicState"       infoPtr) dynaPtr
                    poke (Off.offset @"layout"              infoPtr) layout
                    poke (Off.offset @"renderPass"          infoPtr) pass
                    poke (Off.offset @"subpass"             infoPtr) 0
                    poke (Off.offset @"basePipelineHandle"  infoPtr) VK_NULL_HANDLE
                    poke (Off.offset @"basePipelineIndex"   infoPtr) (-1)

                    alloca $ \ptr -> do
                      res <- vkCreateGraphicsPipelines dev VK_NULL_HANDLE 1 infoPtr nullPtr ptr
                      case res of
                        VK_SUCCESS                    -> peek ptr
                        VK_ERROR_OUT_OF_HOST_MEMORY   -> fail "vkCreateGraphicsPipelines: out of host memory"
                        VK_ERROR_OUT_OF_DEVICE_MEMORY -> fail "vkCreateGraphicsPipelines: out of device memory"
                        _                             -> fail $ "vkCreateGraphicsPipelines: error #" <> show res




createFramebuffer :: (Word32, Word32) -> VkDevice -> VkRenderPass -> VkImageView -> IO VkFramebuffer
createFramebuffer (w,h) dev pass view =
  alloca $ \viewPtr -> do
    poke viewPtr view
    alloca $ \(infoPtr :: Ptr VkFramebufferCreateInfo) -> do
      poke (Off.offset @"sType"           infoPtr) VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO
      poke (Off.offset @"pNext"           infoPtr) nullPtr
      poke (Off.offset @"flags"           infoPtr) 0
      poke (Off.offset @"renderPass"      infoPtr) pass
      poke (Off.offset @"attachmentCount" infoPtr) 1
      poke (Off.offset @"pAttachments"    infoPtr) viewPtr
      poke (Off.offset @"width"           infoPtr) w
      poke (Off.offset @"height"          infoPtr) h
      poke (Off.offset @"layers"          infoPtr) 1

      alloca $ \ptr -> do
        res <- vkCreateFramebuffer dev infoPtr nullPtr ptr
        case res of
          VK_SUCCESS                    -> peek ptr
          VK_ERROR_OUT_OF_HOST_MEMORY   -> fail "vkCreateFramebuffer: out of host memory"
          VK_ERROR_OUT_OF_DEVICE_MEMORY -> fail "vkCreateFramebuffer: out of device memory"
          _                             -> fail $ "vkCreateFramebuffer: error #" <> show res

withFramebuffers :: (Word32, Word32) -> VkDevice -> VkRenderPass -> [VkImageView] -> ([VkFramebuffer] -> IO a) -> IO a
withFramebuffers fsize dev pass views =
  brackets (createFramebuffer fsize dev pass <$> views) $ \fbuf -> vkDestroyFramebuffer dev fbuf nullPtr



createCommandPool :: QueueFamilies -> VkDevice -> IO VkCommandPool
createCommandPool qfam dev =
  alloca $ \(infoPtr :: Ptr VkCommandPoolCreateInfo) -> do
    poke (Off.offset @"sType"            infoPtr) VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO
    poke (Off.offset @"pNext"            infoPtr) nullPtr
    poke (Off.offset @"flags"            infoPtr) VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT
    poke (Off.offset @"queueFamilyIndex" infoPtr) $ case qfam of
                                                  SingleQueue n      -> n
                                                  MultipleQueues g _ -> g

    alloca $ \ptr -> do
      res <- vkCreateCommandPool dev infoPtr nullPtr ptr
      case res of
        VK_SUCCESS                    -> peek ptr
        VK_ERROR_OUT_OF_HOST_MEMORY   -> fail "vkCreateCommandPool: out of host memory"
        VK_ERROR_OUT_OF_DEVICE_MEMORY -> fail "vkCreateCommandPool: out of device memory"
        _                             -> fail $ "vkCreateCommandPool: error #" <> show res



allocateCommandBuffer :: VkDevice -> VkCommandPool -> IO VkCommandBuffer
allocateCommandBuffer dev pool =
  alloca $ \(infoPtr :: Ptr VkCommandBufferAllocateInfo) -> do
    poke (Off.offset @"sType"              infoPtr) VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO
    poke (Off.offset @"pNext"              infoPtr) nullPtr
    poke (Off.offset @"commandPool"        infoPtr) pool
    poke (Off.offset @"level"              infoPtr) VK_COMMAND_BUFFER_LEVEL_PRIMARY
    poke (Off.offset @"commandBufferCount" infoPtr) 1

    alloca $ \ptr -> do
      res <- vkAllocateCommandBuffers dev infoPtr ptr
      case res of
        VK_SUCCESS                    -> peek ptr
        VK_ERROR_OUT_OF_HOST_MEMORY   -> fail "vkAllocateCommandBuffers: out of host memory"
        VK_ERROR_OUT_OF_DEVICE_MEMORY -> fail "vkAllocateCommandBuffers: out of device memory"
        _                             -> fail $ "vkAllocateCommandBuffers: error #" <> show res



beginCommandBuffer :: VkCommandBuffer -> IO ()
beginCommandBuffer buf =
  alloca $ \(infoPtr :: Ptr VkCommandBufferBeginInfo) -> do
    poke (Off.offset @"sType"            infoPtr) VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO
    poke (Off.offset @"pNext"            infoPtr) nullPtr
    poke (Off.offset @"flags"            infoPtr) 0
    poke (Off.offset @"pInheritanceInfo" infoPtr) nullPtr

    res <- vkBeginCommandBuffer buf infoPtr
    case res of
      VK_SUCCESS                    -> return ()
      VK_ERROR_OUT_OF_HOST_MEMORY   -> fail "vkBeginCommandBuffer: out of host memory"
      VK_ERROR_OUT_OF_DEVICE_MEMORY -> fail "vkBeginCommandBuffer: out of device memory"
      _                             -> fail $ "vkBeginCommandBuffer: error #" <> show res



cmdBeginRenderPass :: VkCommandBuffer -> (Word32, Word32) -> VkRenderPass -> VkFramebuffer -> IO ()
cmdBeginRenderPass buf (w, h) pass fbuf =
  alloca $ \clvaPtr -> do
    poke (            offset @"float32" $ Off.offset @"color" clvaPtr   ) 0
    poke (advancePtr (Off.offset @"float32" $ Off.offset @"color" clvaPtr) 1) 0
    poke (advancePtr (Off.offset @"float32" $ Off.offset @"color" clvaPtr) 2) 0
    poke (advancePtr (Off.offset @"float32" $ Off.offset @"color" clvaPtr) 3) 1

    alloca $ \(infoPtr :: Ptr VkRenderPassBeginInfo) -> do
      poke (Off.offset @"sType"                                                    infoPtr) VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO
      poke (Off.offset @"pNext"                                                    infoPtr) nullPtr
      poke (Off.offset @"renderPass"                                               infoPtr) pass
      poke (Off.offset @"framebuffer"                                              infoPtr) fbuf
      poke (Off.offset @"x" . Off.offset @"offset" $ Off.offset @"renderArea"      infoPtr) 0
      poke (Off.offset @"y" . Off.offset @"offset" $ Off.offset @"renderArea"      infoPtr) 0
      poke (Off.offset @"width"  . Off.offset @"extent" $ Off.offset @"renderArea" infoPtr) w
      poke (Off.offset @"height" . Off.offset @"extent" $ Off.offset @"renderArea" infoPtr) h
      poke (Off.offset @"clearValueCount"                                          infoPtr) 1
      poke (Off.offset @"pClearValues"                                             infoPtr) clvaPtr

      vkCmdBeginRenderPass buf infoPtr VK_SUBPASS_CONTENTS_INLINE



cmdSetViewport :: VkCommandBuffer -> (Word32, Word32) -> IO ()
cmdSetViewport buf fsize = withViewport fsize $ vkCmdSetViewport buf 0 1

cmdSetScissor :: VkCommandBuffer -> (Word32, Word32) -> IO ()
cmdSetScissor buf fsize = withScissor fsize $ vkCmdSetScissor buf 0 1



endCommandBuffer :: VkCommandBuffer -> IO ()
endCommandBuffer buf = do
  res <- vkEndCommandBuffer buf
  case res of
    VK_SUCCESS                    -> return ()
    VK_ERROR_OUT_OF_HOST_MEMORY   -> fail "vkEndCommandBuffer: out of host memory"
    VK_ERROR_OUT_OF_DEVICE_MEMORY -> fail "vkEndCommandBuffer: out of device memory"
    _                             -> fail $ "vkEndCommandBuffer: error #" <> show res



resetCommandBuffer :: VkCommandBuffer -> IO ()
resetCommandBuffer buf = do
  res <- vkResetCommandBuffer buf 0
  case res of
    VK_SUCCESS                    -> return ()
    VK_ERROR_OUT_OF_DEVICE_MEMORY -> fail "vkResetCommandBuffer: out of device memory"
    _                             -> fail $ "vkResetCommandBuffer: error #" <> show res



createSemaphore :: VkDevice -> IO VkSemaphore
createSemaphore dev =
  alloca $ \(infoPtr :: Ptr VkSemaphoreCreateInfo) -> do
    poke (Off.offset @"sType" infoPtr) VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO
    poke (Off.offset @"pNext" infoPtr) nullPtr
    poke (Off.offset @"flags" infoPtr) 0

    alloca $ \ptr -> do
      res <- vkCreateSemaphore dev infoPtr nullPtr ptr
      case res of
        VK_SUCCESS                    -> peek ptr
        VK_ERROR_OUT_OF_HOST_MEMORY   -> fail "vkCreateSemaphore: out of host memory"
        VK_ERROR_OUT_OF_DEVICE_MEMORY -> fail "vkCreateSemaphore: out of device memory"
        _                             -> fail $ "vkCreateSemaphore: error #" <> show res



createFence :: VkDevice -> IO VkFence
createFence dev =
  alloca $ \(infoPtr :: Ptr VkFenceCreateInfo) -> do
    poke (Off.offset @"sType" infoPtr) VK_STRUCTURE_TYPE_FENCE_CREATE_INFO
    poke (Off.offset @"pNext" infoPtr) nullPtr
    poke (Off.offset @"flags" infoPtr) 0

    alloca $ \ptr -> do
      res <- vkCreateFence dev infoPtr nullPtr ptr
      case res of
        VK_SUCCESS                    -> peek ptr
        VK_ERROR_OUT_OF_HOST_MEMORY   -> fail "vkCreateFence: out of host memory"
        VK_ERROR_OUT_OF_DEVICE_MEMORY -> fail "vkCreateFence: out of device memory"
        _                             -> fail $ "vkCreateFence: error #" <> show res


waitForFence :: VkDevice -> VkFence -> IO ()
waitForFence dev fence = do
  alloca $ \ptr -> do
    poke ptr fence
    res <- vkWaitForFences dev 1 ptr VK_TRUE maxBound
    case res of
      VK_SUCCESS                    -> return ()
      VK_TIMEOUT                    -> fail "vkWaitForFences: timeout"
      VK_ERROR_OUT_OF_HOST_MEMORY   -> fail "vkWaitForFences: out of host memory"
      VK_ERROR_OUT_OF_DEVICE_MEMORY -> fail "vkWaitForFences: out of device memory"
      VK_ERROR_DEVICE_LOST          -> fail "vkWaitForFences: device lost"
      _                             -> fail $ "vkWaitForFences: error #" <> show res



resetFence :: VkDevice -> VkFence -> IO ()
resetFence dev fence = do
  alloca $ \ptr -> do
    poke ptr fence
    res <- vkResetFences dev 1 ptr
    case res of
      VK_SUCCESS                    -> return ()
      VK_ERROR_OUT_OF_DEVICE_MEMORY -> fail "vkResetFences: out of device memory"
      _                             -> fail $ "vkResetFences: error #" <> show res



data ImageFlavor = Proper
                 | Suboptimal
                   deriving Show

data NextImage = NextImage ImageFlavor Word32
               | OutOfDate
                 deriving Show

acquireNextImageKHR :: VK_KHR_swapchain -> VkDevice -> VkSwapchainKHR -> VkSemaphore -> IO NextImage
acquireNextImageKHR vk_KHR_swapchain dev swch sem =
  alloca $ \ptr -> do
    res <- vkAcquireNextImageKHR vk_KHR_swapchain dev swch maxBound sem VK_NULL_HANDLE ptr
    case res of
      VK_SUCCESS                    -> NextImage Proper <$> peek ptr
      VK_TIMEOUT                    -> fail "vkAcquireNextImageKHR: timeout"
      VK_NOT_READY                  -> fail "vkAcquireNextImageKHR: not ready"
      VK_SUBOPTIMAL_KHR             -> NextImage Suboptimal <$> peek ptr
      VK_ERROR_OUT_OF_HOST_MEMORY   -> fail "vkAcquireNextImageKHR: out of host memory"
      VK_ERROR_OUT_OF_DEVICE_MEMORY -> fail "vkAcquireNextImageKHR: out of device memory"
      VK_ERROR_DEVICE_LOST          -> fail "vkAcquireNextImageKHR: device lost"
      VK_ERROR_OUT_OF_DATE_KHR      -> pure OutOfDate
      VK_ERROR_SURFACE_LOST_KHR     -> fail "vkAcquireNextImageKHR: surface lost"
      _                             -> fail $ "vkAcquireNextImageKHR: error #" <> show res



queueSubmit :: VkQueue -> VkCommandBuffer -> VkSemaphore -> VkSemaphore -> VkFence -> IO ()
queueSubmit queue buf iasem rfsem fence =
  withArray [rfsem] $ \rfsemPtr ->
    withArray [VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT] $ \dstPtr ->
      withArray [buf] $ \bufPtr ->
        withArray [iasem] $ \iasemPtr ->
          alloca $ \(infoPtr :: Ptr VkSubmitInfo) -> do
            poke (Off.offset @"sType"                infoPtr) VK_STRUCTURE_TYPE_SUBMIT_INFO
            poke (Off.offset @"pNext"                infoPtr) nullPtr
            poke (Off.offset @"waitSemaphoreCount"   infoPtr) 1
            poke (Off.offset @"pWaitSemaphores"      infoPtr) iasemPtr
            poke (Off.offset @"pWaitDstStageMask"    infoPtr) dstPtr
            poke (Off.offset @"commandBufferCount"   infoPtr) 1
            poke (Off.offset @"pCommandBuffers"      infoPtr) bufPtr
            poke (Off.offset @"signalSemaphoreCount" infoPtr) 1
            poke (Off.offset @"pSignalSemaphores"    infoPtr) rfsemPtr

            res <- vkQueueSubmit queue 1 infoPtr fence
            case res of
              VK_SUCCESS                    -> return ()
              VK_ERROR_OUT_OF_HOST_MEMORY   -> fail "vkQueueSubmit: out of host memory"
              VK_ERROR_OUT_OF_DEVICE_MEMORY -> fail "vkQueueSubmit: out of device memory"
              VK_ERROR_DEVICE_LOST          -> fail "vkQueueSubmit: device lost"
              _                             -> fail $ "vkQueueSubmit: error #" <> show res



presentInfoKHR :: VK_KHR_swapchain -> VkSwapchainKHR -> VkQueue -> VkSemaphore -> Word32 -> IO ImageFlavor
presentInfoKHR vk_KHR_swapchain swch queue rfsem imageIndex =
  withArray [rfsem] $ \rfsemPtr ->
    withArray [swch] $ \swchPtr ->
      withArray [imageIndex] $ \imgnPtr ->
        alloca $ \(infoPtr :: Ptr VkPresentInfoKHR) -> do
          poke (Off.offset @"sType"              infoPtr) VK_STRUCTURE_TYPE_PRESENT_INFO_KHR
          poke (Off.offset @"pNext"              infoPtr) nullPtr
          poke (Off.offset @"waitSemaphoreCount" infoPtr) 1
          poke (Off.offset @"pWaitSemaphores"    infoPtr) rfsemPtr
          poke (Off.offset @"swapchainCount"     infoPtr) 1
          poke (Off.offset @"pSwapchains"        infoPtr) swchPtr
          poke (Off.offset @"pImageIndices"      infoPtr) imgnPtr
          poke (Off.offset @"pResults"           infoPtr) nullPtr

          res <- vkQueuePresentKHR vk_KHR_swapchain queue infoPtr
          case res of
            VK_SUCCESS                    -> return Proper
            VK_SUBOPTIMAL_KHR             -> return Suboptimal
            VK_ERROR_OUT_OF_HOST_MEMORY   -> fail "vkQueuePresentKHR: out of host memory"
            VK_ERROR_OUT_OF_DEVICE_MEMORY -> fail "vkQueuePresentKHR: out of device memory"
            VK_ERROR_DEVICE_LOST          -> fail "vkQueuePresentKHR: device lost"
            VK_ERROR_OUT_OF_DATE_KHR      -> fail "vkQueuePresentKHR: out of date"
            VK_ERROR_SURFACE_LOST_KHR     -> fail "vkQueuePresentKHR: surface lost"
            _                             -> fail $ "vkQueuePresentKHR: error #" <> show res



deviceWaitIdle :: VkDevice -> IO ()
deviceWaitIdle dev = do
  res <- vkDeviceWaitIdle dev
  case res of
    VK_SUCCESS                    -> return ()
    VK_ERROR_OUT_OF_HOST_MEMORY   -> fail "vkDeviceWaitIdle: out of host memory"
    VK_ERROR_OUT_OF_DEVICE_MEMORY -> fail "vkDeviceWaitIdle: out of device memory"
    VK_ERROR_DEVICE_LOST          -> fail "vkDeviceWaitIdle: device lost"
    _                             -> fail $ "vkDeviceWaitIdle: error #" <> show res



createAllocator :: VkInstance -> VkPhysicalDevice -> VkDevice -> IO VmaAllocator
createAllocator inst phys dev = do
  alloca $ \(infoPtr :: Ptr VmaAllocatorCreateInfo) -> do
    poke (Off.offset @"flags"                          infoPtr) 0
    poke (Off.offset @"physicalDevice"                 infoPtr) phys
    poke (Off.offset @"device"                         infoPtr) dev
    poke (Off.offset @"preferredLargeHeapBlockSize"    infoPtr) 0
    poke (Off.offset @"pAllocationCallbacks"           infoPtr) nullPtr
    poke (Off.offset @"pDeviceMemoryCallbacks"         infoPtr) nullPtr
    poke (Off.offset @"pHeapSizeLimit"                 infoPtr) nullPtr
    poke (Off.offset @"pVulkanFunctions"               infoPtr) nullPtr
    poke (Off.offset @"instance"                       infoPtr) inst
    poke (Off.offset @"vulkanApiVersion"               infoPtr) VK_API_VERSION_1_0
    poke (Off.offset @"pTypeExternalMemoryHandleTypes" infoPtr) nullPtr

    alloca $ \ptr -> do
      res <- vmaCreateAllocator infoPtr ptr
      case res of
        VK_SUCCESS                    -> peek ptr
        VK_ERROR_OUT_OF_HOST_MEMORY   -> fail "vmaCreateAllocator: out of host memory"
        VK_ERROR_OUT_OF_DEVICE_MEMORY -> fail "vmaCreateAllocator: out of device memory"
        _                             -> fail $ "vmaCreateAllocator: error #" <> show res



createBuffer :: VmaAllocator -> VkDeviceSize -> IO (VkBuffer, VmaAllocation)
createBuffer alloc size = do
  alloca $ \(buinPtr :: Ptr VkBufferCreateInfo) -> do
    poke (Off.offset @"sType"                 buinPtr) VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO
    poke (Off.offset @"pNext"                 buinPtr) nullPtr
    poke (Off.offset @"flags"                 buinPtr) 0
    poke (Off.offset @"size"                  buinPtr) size
    poke (Off.offset @"usage"                 buinPtr) VK_BUFFER_USAGE_VERTEX_BUFFER_BIT
    poke (Off.offset @"sharingMode"           buinPtr) VK_SHARING_MODE_EXCLUSIVE
    poke (Off.offset @"queueFamilyIndexCount" buinPtr) 0
    poke (Off.offset @"pQueueFamilyIndices"   buinPtr) nullPtr

    alloca $ \(alinPtr :: Ptr VmaAllocationCreateInfo) -> do
      poke (Off.offset @"flags"          alinPtr) VMA_ALLOCATION_CREATE_HOST_ACCESS_SEQUENTIAL_WRITE_BIT 
      poke (Off.offset @"usage"          alinPtr) VMA_MEMORY_USAGE_AUTO
      poke (Off.offset @"requiredFlags"  alinPtr) 0
      poke (Off.offset @"preferredFlags" alinPtr) 0
      poke (Off.offset @"memoryTypeBits" alinPtr) 0
      poke (Off.offset @"pool"           alinPtr) VK_NULL_HANDLE
      poke (Off.offset @"pUserData"      alinPtr) nullPtr
      poke (Off.offset @"priority"       alinPtr) 0.5
      
      allocaArray 2 $ \ptr -> do
        let ptr1 = castPtr $ advancePtr ptr 1
        res <- vmaCreateBuffer alloc buinPtr alinPtr ptr ptr1 nullPtr
        case res of
          VK_SUCCESS                    -> (,) <$> peek ptr
                                               <*> peek ptr1
          VK_ERROR_OUT_OF_HOST_MEMORY   -> fail "vmaCreateBuffer: out of host memory"
          VK_ERROR_OUT_OF_DEVICE_MEMORY -> fail "vmaCreateBuffer: out of device memory"
          _                             -> fail $ "vmaCreateBuffer: error #" <> show res
 


mapMemory :: VmaAllocator -> VmaAllocation -> IO (Ptr ())
mapMemory alloc alc = do
  alloca $ \ptr -> do
    res <- vmaMapMemory alloc alc ptr
    case res of
      VK_SUCCESS                    -> peek ptr
      VK_ERROR_OUT_OF_HOST_MEMORY   -> fail "vmaMapMemory: out of host memory"
      VK_ERROR_OUT_OF_DEVICE_MEMORY -> fail "vmaMapMemory: out of device memory"
      VK_ERROR_MEMORY_MAP_FAILED    -> fail "vmaMapMemory: memory map failed"
      _                             -> fail $ "vmaMapMemory: error #" <> show res

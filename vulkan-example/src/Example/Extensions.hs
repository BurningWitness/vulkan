{-# LANGUAGE CApiFFI
           , DataKinds
           , ForeignFunctionInterface
           , TypeApplications #-}

module Example.Extensions where

import           Vulkan.Core_1_0
import           Vulkan.Ext.VK_KHR_surface
import           Vulkan.Ext.VK_KHR_swapchain

import           Foreign.C.String
import           Foreign.Marshal.Alloc
import           Foreign.Marshal.Array
import           Foreign.Ptr
import           Foreign.Storable
import           Foreign.Storable.Offset as Off



-- | Direct C string comparison
strcmp :: CString -> CString -> IO Bool
strcmp ptra ptrb = do
  a <- peek ptra
  b <- peek ptrb
  if a == 0
    then pure $ b == 0
    else if a == b
           then strcmp (advancePtr ptra 1) (advancePtr ptrb 1)
           else pure False

-- | Removes any strings that match the first one from a list
strexclude :: CString -> [CString] -> IO [CString]
strexclude cstr = go
  where
    go    []  = pure []
    go (c:cs) = do
      eq <- strcmp cstr c
      if eq
        then go cs
        else (:) c <$> go cs

-- | Goes through a list of extensions supported by the available Vulkan API
--   and removes extensions that are supported from the provided list.
--
--   The returned list is thus the list of extensions not supported on this installation.
checkInstanceExtensionSupport :: [CString] -> IO [CString]
checkInstanceExtensionSupport cstrs = do
  alloca $ \lenPtr -> do
    res1 <- vkEnumerateInstanceExtensionProperties nullPtr lenPtr nullPtr
    case res1 of
      VK_SUCCESS -> do
        len <- peek lenPtr
        if len <= 0
          then return cstrs
          else do
            allocaArray (fromIntegral len) $ \arrPtr -> do
              res2 <- vkEnumerateInstanceExtensionProperties nullPtr lenPtr arrPtr
              case res2 of
                VK_SUCCESS ->
                  let go acc n
                        | n < 0     = return acc
                        | otherwise = do
                            let cstr = Off.offset @"extensionName" $ advancePtr arrPtr n
                            acc' <- strexclude (castPtr cstr) acc
                            go acc' (n - 1)

                  in go cstrs (fromIntegral len - 1)

                VK_INCOMPLETE                 -> fail "vkEnumerateInstanceExtensionProperties: incomplete"
                VK_ERROR_OUT_OF_HOST_MEMORY   -> fail "vkEnumerateInstanceExtensionProperties: out of host memory"
                VK_ERROR_OUT_OF_DEVICE_MEMORY -> fail "vkEnumerateInstanceExtensionProperties: out of device memory"
                VK_ERROR_LAYER_NOT_PRESENT    -> fail "vkEnumerateInstanceExtensionProperties: layer not present"
                _                             -> fail $ "vkEnumerateInstanceExtensionProperties: error #" <> show res2

      VK_INCOMPLETE                 -> fail "vkEnumerateInstanceExtensionProperties: incomplete"
      VK_ERROR_OUT_OF_HOST_MEMORY   -> fail "vkEnumerateInstanceExtensionProperties: out of host memory"
      VK_ERROR_OUT_OF_DEVICE_MEMORY -> fail "vkEnumerateInstanceExtensionProperties: out of device memory"
      VK_ERROR_LAYER_NOT_PRESENT    -> fail "vkEnumerateInstanceExtensionProperties: layer not present"
      _                             -> fail $ "vkEnumerateInstanceExtensionProperties: error #" <> show res1
 
-- | Goes through a list of extensions supported by the given physical device
--   and removes extensions that are supported from the provided list.
--
--   The returned list is thus the list of extensions not supported by the device.
checkDeviceExtensionSupport :: VkPhysicalDevice -> [CString] -> IO [CString]
checkDeviceExtensionSupport phys cstrs = do
  alloca $ \lenPtr -> do
    res1 <- vkEnumerateDeviceExtensionProperties phys nullPtr lenPtr nullPtr
    case res1 of
      VK_SUCCESS -> do
        len <- peek lenPtr
        if len <= 0
          then return cstrs
          else do
            allocaArray (fromIntegral len) $ \arrPtr -> do
              res2 <- vkEnumerateDeviceExtensionProperties phys nullPtr lenPtr arrPtr
              case res2 of
                VK_SUCCESS ->
                  let go acc n
                        | n < 0     = return acc
                        | otherwise = do
                            let cstr = Off.offset @"extensionName" $ advancePtr arrPtr n
                            acc' <- strexclude (castPtr cstr) acc
                            go acc' (n - 1)

                  in go cstrs (fromIntegral len - 1)

                VK_INCOMPLETE                 -> fail "vkEnumerateDeviceExtensionProperties: incomplete"
                VK_ERROR_OUT_OF_HOST_MEMORY   -> fail "vkEnumerateDeviceExtensionProperties: out of host memory"
                VK_ERROR_OUT_OF_DEVICE_MEMORY -> fail "vkEnumerateDeviceExtensionProperties: out of device memory"
                VK_ERROR_LAYER_NOT_PRESENT    -> fail "vkEnumerateDeviceExtensionProperties: layer not present"
                _                             -> fail $ "vkEnumerateDeviceExtensionProperties: error #" <> show res2

      VK_INCOMPLETE                 -> fail "vkEnumerateDeviceExtensionProperties: incomplete"
      VK_ERROR_OUT_OF_HOST_MEMORY   -> fail "vkEnumerateDeviceExtensionProperties: out of host memory"
      VK_ERROR_OUT_OF_DEVICE_MEMORY -> fail "vkEnumerateDeviceExtensionProperties: out of device memory"
      VK_ERROR_LAYER_NOT_PRESENT    -> fail "vkEnumerateDeviceExtensionProperties: layer not present"
      _                             -> fail $ "vkEnumerateDeviceExtensionProperties: error #" <> show res1



getInstanceFunPtr :: VkInstance -> (FunPtr a -> a) -> VkFun a -> IO a
getInstanceFunPtr inst conv fun@(VkFun cstr) = do
  ptr <- vkGetInstanceFunPtr inst fun
  if ptr == nullFunPtr
    then do name <- peekCString $ castPtr cstr
            fail $ name <> ": unsupported instance function"
    else return $ conv ptr

getDeviceFunPtr :: VkDevice -> (FunPtr a -> a) -> VkFun a -> IO a
getDeviceFunPtr inst conv fun@(VkFun cstr) = do
  ptr <- vkGetDeviceFunPtr inst fun
  if ptr == nullFunPtr
    then do name <- peekCString $ castPtr cstr
            fail $ name <> ": unsupported device function"
    else return $ conv ptr



class GetInstanceExtension a where
  getInstanceExtension :: VkInstance -> IO a

class GetDeviceExtension a where
  getDeviceExtension :: VkDevice -> IO a



data VK_KHR_surface =
       VK_KHR_surface
         { vkDestroySurfaceKHR                       :: VkDestroySurfaceKHR
         , vkGetPhysicalDeviceSurfaceSupportKHR      :: VkGetPhysicalDeviceSurfaceSupportKHR
         , vkGetPhysicalDeviceSurfaceCapabilitiesKHR :: VkGetPhysicalDeviceSurfaceCapabilitiesKHR
         , vkGetPhysicalDeviceSurfaceFormatsKHR      :: VkGetPhysicalDeviceSurfaceFormatsKHR
         , vkGetPhysicalDeviceSurfacePresentModesKHR :: VkGetPhysicalDeviceSurfacePresentModesKHR
         }

foreign import capi "dynamic"
  dynDestroySurfaceKHR :: FunPtr VkDestroySurfaceKHR -> VkDestroySurfaceKHR

foreign import capi "dynamic"
  dynGetPhysicalDeviceSurfaceSupportKHR :: FunPtr VkGetPhysicalDeviceSurfaceSupportKHR -> VkGetPhysicalDeviceSurfaceSupportKHR

foreign import capi "dynamic"
  dynGetPhysicalDeviceSurfaceCapabilitiesKHR :: FunPtr VkGetPhysicalDeviceSurfaceCapabilitiesKHR -> VkGetPhysicalDeviceSurfaceCapabilitiesKHR

foreign import capi "dynamic"
  dynGetPhysicalDeviceSurfaceFormatsKHR :: FunPtr VkGetPhysicalDeviceSurfaceFormatsKHR -> VkGetPhysicalDeviceSurfaceFormatsKHR

foreign import capi "dynamic"
  dynGetPhysicalDeviceSurfacePresentModesKHR :: FunPtr VkGetPhysicalDeviceSurfacePresentModesKHR -> VkGetPhysicalDeviceSurfacePresentModesKHR



instance GetInstanceExtension VK_KHR_surface where
  getInstanceExtension inst =
    VK_KHR_surface
      <$> getInstanceFunPtr inst dynDestroySurfaceKHR vkFunDestroySurfaceKHR
      <*> getInstanceFunPtr inst dynGetPhysicalDeviceSurfaceSupportKHR vkFunGetPhysicalDeviceSurfaceSupportKHR
      <*> getInstanceFunPtr inst dynGetPhysicalDeviceSurfaceCapabilitiesKHR vkFunGetPhysicalDeviceSurfaceCapabilitiesKHR
      <*> getInstanceFunPtr inst dynGetPhysicalDeviceSurfaceFormatsKHR vkFunGetPhysicalDeviceSurfaceFormatsKHR
      <*> getInstanceFunPtr inst dynGetPhysicalDeviceSurfacePresentModesKHR vkFunGetPhysicalDeviceSurfacePresentModesKHR



data VK_KHR_swapchain =
       VK_KHR_swapchain
         { vkCreateSwapchainKHR    :: VkCreateSwapchainKHR
         , vkDestroySwapchainKHR   :: VkDestroySwapchainKHR
         , vkGetSwapchainImagesKHR :: VkGetSwapchainImagesKHR
         , vkAcquireNextImageKHR   :: VkAcquireNextImageKHR
         , vkQueuePresentKHR       :: VkQueuePresentKHR
         }

foreign import capi "dynamic"
  dynCreateSwapchainKHR :: FunPtr VkCreateSwapchainKHR -> VkCreateSwapchainKHR

foreign import capi "dynamic"
  dynDestroySwapchainKHR :: FunPtr VkDestroySwapchainKHR -> VkDestroySwapchainKHR

foreign import capi "dynamic"
  dynGetSwapchainImagesKHR :: FunPtr VkGetSwapchainImagesKHR -> VkGetSwapchainImagesKHR

foreign import capi "dynamic"
  dynAcquireNextImageKHR :: FunPtr VkAcquireNextImageKHR -> VkAcquireNextImageKHR

foreign import capi "dynamic"
  dynQueuePresentKHR :: FunPtr VkQueuePresentKHR -> VkQueuePresentKHR

instance GetDeviceExtension VK_KHR_swapchain where
  getDeviceExtension dev =
    VK_KHR_swapchain
      <$> getDeviceFunPtr dev dynCreateSwapchainKHR    vkFunCreateSwapchainKHR
      <*> getDeviceFunPtr dev dynDestroySwapchainKHR   vkFunDestroySwapchainKHR
      <*> getDeviceFunPtr dev dynGetSwapchainImagesKHR vkFunGetSwapchainImagesKHR
      <*> getDeviceFunPtr dev dynAcquireNextImageKHR   vkFunAcquireNextImageKHR
      <*> getDeviceFunPtr dev dynQueuePresentKHR       vkFunQueuePresentKHR

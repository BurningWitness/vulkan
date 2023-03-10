{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_swapchain

module Vulkan.Types.Struct.VkSwapchainCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkColorSpaceKHR
import Vulkan.Types.Enum.VkCompositeAlphaFlagBitsKHR
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkImageUsageFlags
import Vulkan.Types.Enum.VkPresentModeKHR
import Vulkan.Types.Enum.VkSharingMode
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkSurfaceTransformFlagBitsKHR
import Vulkan.Types.Enum.VkSwapchainCreateFlagsKHR
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkExtent2D



data {-# CTYPE "vulkan/vulkan.h" "VkSwapchainCreateInfoKHR" #-} VkSwapchainCreateInfoKHR =
       VkSwapchainCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkSwapchainCreateFlagsKHR
         , surface :: VkSurfaceKHR -- ^ The swapchain's target surface
         , minImageCount :: #{type uint32_t} -- ^ Minimum number of presentation images the application needs
         , imageFormat :: VkFormat -- ^ Format of the presentation images
         , imageColorSpace :: VkColorSpaceKHR -- ^ Colorspace of the presentation images
         , imageExtent :: VkExtent2D -- ^ Dimensions of the presentation images
         , imageArrayLayers :: #{type uint32_t} -- ^ Determines the number of views for multiview/stereo presentation
         , imageUsage :: VkImageUsageFlags -- ^ Bits indicating how the presentation images will be used
         , imageSharingMode :: VkSharingMode -- ^ Sharing mode used for the presentation images
         , queueFamilyIndexCount :: #{type uint32_t} -- ^ Number of queue families having access to the images in case of concurrent sharing mode
         , pQueueFamilyIndices :: Ptr #{type uint32_t} -- ^ Array of queue family indices having access to the images in case of concurrent sharing mode
         , preTransform :: VkSurfaceTransformFlagBitsKHR -- ^ The transform, relative to the device's natural orientation, applied to the image content prior to presentation
         , compositeAlpha :: VkCompositeAlphaFlagBitsKHR -- ^ The alpha blending mode used when compositing this surface with other surfaces in the window system
         , presentMode :: VkPresentModeKHR -- ^ Which presentation mode to use for presents on this swap chain
         , clipped :: VkBool32 -- ^ Specifies whether presentable images may be affected by window clip regions
         , oldSwapchain :: VkSwapchainKHR -- ^ Existing swap chain to replace, if any
         }

instance Storable VkSwapchainCreateInfoKHR where
  sizeOf    _ = #{size      VkSwapchainCreateInfoKHR}
  alignment _ = #{alignment VkSwapchainCreateInfoKHR}

  peek ptr = 
    VkSwapchainCreateInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"surface" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minImageCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"imageFormat" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"imageColorSpace" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"imageExtent" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"imageArrayLayers" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"imageUsage" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"imageSharingMode" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"queueFamilyIndexCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pQueueFamilyIndices" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"preTransform" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"compositeAlpha" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"presentMode" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"clipped" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"oldSwapchain" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"surface" ptr val
    pokeField @"minImageCount" ptr val
    pokeField @"imageFormat" ptr val
    pokeField @"imageColorSpace" ptr val
    pokeField @"imageExtent" ptr val
    pokeField @"imageArrayLayers" ptr val
    pokeField @"imageUsage" ptr val
    pokeField @"imageSharingMode" ptr val
    pokeField @"queueFamilyIndexCount" ptr val
    pokeField @"pQueueFamilyIndices" ptr val
    pokeField @"preTransform" ptr val
    pokeField @"compositeAlpha" ptr val
    pokeField @"presentMode" ptr val
    pokeField @"clipped" ptr val
    pokeField @"oldSwapchain" ptr val

instance Offset "sType" VkSwapchainCreateInfoKHR where
  rawOffset = #{offset VkSwapchainCreateInfoKHR, sType}

instance Offset "pNext" VkSwapchainCreateInfoKHR where
  rawOffset = #{offset VkSwapchainCreateInfoKHR, pNext}

instance Offset "flags" VkSwapchainCreateInfoKHR where
  rawOffset = #{offset VkSwapchainCreateInfoKHR, flags}

instance Offset "surface" VkSwapchainCreateInfoKHR where
  rawOffset = #{offset VkSwapchainCreateInfoKHR, surface}

instance Offset "minImageCount" VkSwapchainCreateInfoKHR where
  rawOffset = #{offset VkSwapchainCreateInfoKHR, minImageCount}

instance Offset "imageFormat" VkSwapchainCreateInfoKHR where
  rawOffset = #{offset VkSwapchainCreateInfoKHR, imageFormat}

instance Offset "imageColorSpace" VkSwapchainCreateInfoKHR where
  rawOffset = #{offset VkSwapchainCreateInfoKHR, imageColorSpace}

instance Offset "imageExtent" VkSwapchainCreateInfoKHR where
  rawOffset = #{offset VkSwapchainCreateInfoKHR, imageExtent}

instance Offset "imageArrayLayers" VkSwapchainCreateInfoKHR where
  rawOffset = #{offset VkSwapchainCreateInfoKHR, imageArrayLayers}

instance Offset "imageUsage" VkSwapchainCreateInfoKHR where
  rawOffset = #{offset VkSwapchainCreateInfoKHR, imageUsage}

instance Offset "imageSharingMode" VkSwapchainCreateInfoKHR where
  rawOffset = #{offset VkSwapchainCreateInfoKHR, imageSharingMode}

instance Offset "queueFamilyIndexCount" VkSwapchainCreateInfoKHR where
  rawOffset = #{offset VkSwapchainCreateInfoKHR, queueFamilyIndexCount}

instance Offset "pQueueFamilyIndices" VkSwapchainCreateInfoKHR where
  rawOffset = #{offset VkSwapchainCreateInfoKHR, pQueueFamilyIndices}

instance Offset "preTransform" VkSwapchainCreateInfoKHR where
  rawOffset = #{offset VkSwapchainCreateInfoKHR, preTransform}

instance Offset "compositeAlpha" VkSwapchainCreateInfoKHR where
  rawOffset = #{offset VkSwapchainCreateInfoKHR, compositeAlpha}

instance Offset "presentMode" VkSwapchainCreateInfoKHR where
  rawOffset = #{offset VkSwapchainCreateInfoKHR, presentMode}

instance Offset "clipped" VkSwapchainCreateInfoKHR where
  rawOffset = #{offset VkSwapchainCreateInfoKHR, clipped}

instance Offset "oldSwapchain" VkSwapchainCreateInfoKHR where
  rawOffset = #{offset VkSwapchainCreateInfoKHR, oldSwapchain}

#else

module Vulkan.Types.Struct.VkSwapchainCreateInfoKHR where

#endif
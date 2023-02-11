{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
  sizeOf    _ = #{size      struct VkSwapchainCreateInfoKHR}
  alignment _ = #{alignment struct VkSwapchainCreateInfoKHR}

  peek ptr = 
    VkSwapchainCreateInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"surface" ptr)
       <*> peek (offset @"minImageCount" ptr)
       <*> peek (offset @"imageFormat" ptr)
       <*> peek (offset @"imageColorSpace" ptr)
       <*> peek (offset @"imageExtent" ptr)
       <*> peek (offset @"imageArrayLayers" ptr)
       <*> peek (offset @"imageUsage" ptr)
       <*> peek (offset @"imageSharingMode" ptr)
       <*> peek (offset @"queueFamilyIndexCount" ptr)
       <*> peek (offset @"pQueueFamilyIndices" ptr)
       <*> peek (offset @"preTransform" ptr)
       <*> peek (offset @"compositeAlpha" ptr)
       <*> peek (offset @"presentMode" ptr)
       <*> peek (offset @"clipped" ptr)
       <*> peek (offset @"oldSwapchain" ptr)

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
  rawOffset = #{offset struct VkSwapchainCreateInfoKHR, sType}

instance Offset "pNext" VkSwapchainCreateInfoKHR where
  rawOffset = #{offset struct VkSwapchainCreateInfoKHR, pNext}

instance Offset "flags" VkSwapchainCreateInfoKHR where
  rawOffset = #{offset struct VkSwapchainCreateInfoKHR, flags}

instance Offset "surface" VkSwapchainCreateInfoKHR where
  rawOffset = #{offset struct VkSwapchainCreateInfoKHR, surface}

instance Offset "minImageCount" VkSwapchainCreateInfoKHR where
  rawOffset = #{offset struct VkSwapchainCreateInfoKHR, minImageCount}

instance Offset "imageFormat" VkSwapchainCreateInfoKHR where
  rawOffset = #{offset struct VkSwapchainCreateInfoKHR, imageFormat}

instance Offset "imageColorSpace" VkSwapchainCreateInfoKHR where
  rawOffset = #{offset struct VkSwapchainCreateInfoKHR, imageColorSpace}

instance Offset "imageExtent" VkSwapchainCreateInfoKHR where
  rawOffset = #{offset struct VkSwapchainCreateInfoKHR, imageExtent}

instance Offset "imageArrayLayers" VkSwapchainCreateInfoKHR where
  rawOffset = #{offset struct VkSwapchainCreateInfoKHR, imageArrayLayers}

instance Offset "imageUsage" VkSwapchainCreateInfoKHR where
  rawOffset = #{offset struct VkSwapchainCreateInfoKHR, imageUsage}

instance Offset "imageSharingMode" VkSwapchainCreateInfoKHR where
  rawOffset = #{offset struct VkSwapchainCreateInfoKHR, imageSharingMode}

instance Offset "queueFamilyIndexCount" VkSwapchainCreateInfoKHR where
  rawOffset = #{offset struct VkSwapchainCreateInfoKHR, queueFamilyIndexCount}

instance Offset "pQueueFamilyIndices" VkSwapchainCreateInfoKHR where
  rawOffset = #{offset struct VkSwapchainCreateInfoKHR, pQueueFamilyIndices}

instance Offset "preTransform" VkSwapchainCreateInfoKHR where
  rawOffset = #{offset struct VkSwapchainCreateInfoKHR, preTransform}

instance Offset "compositeAlpha" VkSwapchainCreateInfoKHR where
  rawOffset = #{offset struct VkSwapchainCreateInfoKHR, compositeAlpha}

instance Offset "presentMode" VkSwapchainCreateInfoKHR where
  rawOffset = #{offset struct VkSwapchainCreateInfoKHR, presentMode}

instance Offset "clipped" VkSwapchainCreateInfoKHR where
  rawOffset = #{offset struct VkSwapchainCreateInfoKHR, clipped}

instance Offset "oldSwapchain" VkSwapchainCreateInfoKHR where
  rawOffset = #{offset struct VkSwapchainCreateInfoKHR, oldSwapchain}

#else

module Vulkan.Types.Struct.VkSwapchainCreateInfoKHR where

#endif
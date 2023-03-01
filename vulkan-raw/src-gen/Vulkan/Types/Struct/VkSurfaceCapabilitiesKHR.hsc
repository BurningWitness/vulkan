{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_surface

module Vulkan.Types.Struct.VkSurfaceCapabilitiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkCompositeAlphaFlagsKHR
import Vulkan.Types.Enum.VkImageUsageFlags
import Vulkan.Types.Enum.VkSurfaceTransformFlagBitsKHR
import Vulkan.Types.Enum.VkSurfaceTransformFlagsKHR
import Vulkan.Types.Struct.VkExtent2D



data {-# CTYPE "vulkan/vulkan.h" "VkSurfaceCapabilitiesKHR" #-} VkSurfaceCapabilitiesKHR =
       VkSurfaceCapabilitiesKHR
         { minImageCount :: #{type uint32_t} -- ^ Supported minimum number of images for the surface
         , maxImageCount :: #{type uint32_t} -- ^ Supported maximum number of images for the surface, 0 for unlimited
         , currentExtent :: VkExtent2D -- ^ Current image width and height for the surface, (0, 0) if undefined
         , minImageExtent :: VkExtent2D -- ^ Supported minimum image width and height for the surface
         , maxImageExtent :: VkExtent2D -- ^ Supported maximum image width and height for the surface
         , maxImageArrayLayers :: #{type uint32_t} -- ^ Supported maximum number of image layers for the surface
         , supportedTransforms :: VkSurfaceTransformFlagsKHR -- ^ 1 or more bits representing the transforms supported
         , currentTransform :: VkSurfaceTransformFlagBitsKHR -- ^ The surface's current transform relative to the device's natural orientation
         , supportedCompositeAlpha :: VkCompositeAlphaFlagsKHR -- ^ 1 or more bits representing the alpha compositing modes supported
         , supportedUsageFlags :: VkImageUsageFlags -- ^ Supported image usage flags for the surface
         }

instance Storable VkSurfaceCapabilitiesKHR where
  sizeOf    _ = #{size      VkSurfaceCapabilitiesKHR}
  alignment _ = #{alignment VkSurfaceCapabilitiesKHR}

  peek ptr = 
    VkSurfaceCapabilitiesKHR
       <$> peek (Foreign.Storable.Offset.offset @"minImageCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxImageCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"currentExtent" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minImageExtent" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxImageExtent" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxImageArrayLayers" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"supportedTransforms" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"currentTransform" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"supportedCompositeAlpha" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"supportedUsageFlags" ptr)

  poke ptr val = do
    pokeField @"minImageCount" ptr val
    pokeField @"maxImageCount" ptr val
    pokeField @"currentExtent" ptr val
    pokeField @"minImageExtent" ptr val
    pokeField @"maxImageExtent" ptr val
    pokeField @"maxImageArrayLayers" ptr val
    pokeField @"supportedTransforms" ptr val
    pokeField @"currentTransform" ptr val
    pokeField @"supportedCompositeAlpha" ptr val
    pokeField @"supportedUsageFlags" ptr val

instance Offset "minImageCount" VkSurfaceCapabilitiesKHR where
  rawOffset = #{offset VkSurfaceCapabilitiesKHR, minImageCount}

instance Offset "maxImageCount" VkSurfaceCapabilitiesKHR where
  rawOffset = #{offset VkSurfaceCapabilitiesKHR, maxImageCount}

instance Offset "currentExtent" VkSurfaceCapabilitiesKHR where
  rawOffset = #{offset VkSurfaceCapabilitiesKHR, currentExtent}

instance Offset "minImageExtent" VkSurfaceCapabilitiesKHR where
  rawOffset = #{offset VkSurfaceCapabilitiesKHR, minImageExtent}

instance Offset "maxImageExtent" VkSurfaceCapabilitiesKHR where
  rawOffset = #{offset VkSurfaceCapabilitiesKHR, maxImageExtent}

instance Offset "maxImageArrayLayers" VkSurfaceCapabilitiesKHR where
  rawOffset = #{offset VkSurfaceCapabilitiesKHR, maxImageArrayLayers}

instance Offset "supportedTransforms" VkSurfaceCapabilitiesKHR where
  rawOffset = #{offset VkSurfaceCapabilitiesKHR, supportedTransforms}

instance Offset "currentTransform" VkSurfaceCapabilitiesKHR where
  rawOffset = #{offset VkSurfaceCapabilitiesKHR, currentTransform}

instance Offset "supportedCompositeAlpha" VkSurfaceCapabilitiesKHR where
  rawOffset = #{offset VkSurfaceCapabilitiesKHR, supportedCompositeAlpha}

instance Offset "supportedUsageFlags" VkSurfaceCapabilitiesKHR where
  rawOffset = #{offset VkSurfaceCapabilitiesKHR, supportedUsageFlags}

#else

module Vulkan.Types.Struct.VkSurfaceCapabilitiesKHR where

#endif
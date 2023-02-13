{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_display_surface_counter

module Vulkan.Types.Struct.VkSurfaceCapabilities2EXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkCompositeAlphaFlagsKHR
import Vulkan.Types.Enum.VkImageUsageFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkSurfaceCounterFlagsEXT
import Vulkan.Types.Enum.VkSurfaceTransformFlagBitsKHR
import Vulkan.Types.Enum.VkSurfaceTransformFlagsKHR
import Vulkan.Types.Struct.VkExtent2D



data {-# CTYPE "vulkan/vulkan.h" "VkSurfaceCapabilities2EXT" #-} VkSurfaceCapabilities2EXT =
       VkSurfaceCapabilities2EXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , minImageCount :: #{type uint32_t} -- ^ Supported minimum number of images for the surface
         , maxImageCount :: #{type uint32_t} -- ^ Supported maximum number of images for the surface, 0 for unlimited
         , currentExtent :: VkExtent2D -- ^ Current image width and height for the surface, (0, 0) if undefined
         , minImageExtent :: VkExtent2D -- ^ Supported minimum image width and height for the surface
         , maxImageExtent :: VkExtent2D -- ^ Supported maximum image width and height for the surface
         , maxImageArrayLayers :: #{type uint32_t} -- ^ Supported maximum number of image layers for the surface
         , supportedTransforms :: VkSurfaceTransformFlagsKHR -- ^ 1 or more bits representing the transforms supported
         , currentTransform :: VkSurfaceTransformFlagBitsKHR -- ^ The surface's current transform relative to the device's natural orientation
         , supportedCompositeAlpha :: VkCompositeAlphaFlagsKHR -- ^ 1 or more bits representing the alpha compositing modes supported
         , supportedUsageFlags :: VkImageUsageFlags -- ^ Supported image usage flags for the surface
         , supportedSurfaceCounters :: VkSurfaceCounterFlagsEXT
         }

instance Storable VkSurfaceCapabilities2EXT where
  sizeOf    _ = #{size      VkSurfaceCapabilities2EXT}
  alignment _ = #{alignment VkSurfaceCapabilities2EXT}

  peek ptr = 
    VkSurfaceCapabilities2EXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"minImageCount" ptr)
       <*> peek (offset @"maxImageCount" ptr)
       <*> peek (offset @"currentExtent" ptr)
       <*> peek (offset @"minImageExtent" ptr)
       <*> peek (offset @"maxImageExtent" ptr)
       <*> peek (offset @"maxImageArrayLayers" ptr)
       <*> peek (offset @"supportedTransforms" ptr)
       <*> peek (offset @"currentTransform" ptr)
       <*> peek (offset @"supportedCompositeAlpha" ptr)
       <*> peek (offset @"supportedUsageFlags" ptr)
       <*> peek (offset @"supportedSurfaceCounters" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
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
    pokeField @"supportedSurfaceCounters" ptr val

instance Offset "sType" VkSurfaceCapabilities2EXT where
  rawOffset = #{offset VkSurfaceCapabilities2EXT, sType}

instance Offset "pNext" VkSurfaceCapabilities2EXT where
  rawOffset = #{offset VkSurfaceCapabilities2EXT, pNext}

instance Offset "minImageCount" VkSurfaceCapabilities2EXT where
  rawOffset = #{offset VkSurfaceCapabilities2EXT, minImageCount}

instance Offset "maxImageCount" VkSurfaceCapabilities2EXT where
  rawOffset = #{offset VkSurfaceCapabilities2EXT, maxImageCount}

instance Offset "currentExtent" VkSurfaceCapabilities2EXT where
  rawOffset = #{offset VkSurfaceCapabilities2EXT, currentExtent}

instance Offset "minImageExtent" VkSurfaceCapabilities2EXT where
  rawOffset = #{offset VkSurfaceCapabilities2EXT, minImageExtent}

instance Offset "maxImageExtent" VkSurfaceCapabilities2EXT where
  rawOffset = #{offset VkSurfaceCapabilities2EXT, maxImageExtent}

instance Offset "maxImageArrayLayers" VkSurfaceCapabilities2EXT where
  rawOffset = #{offset VkSurfaceCapabilities2EXT, maxImageArrayLayers}

instance Offset "supportedTransforms" VkSurfaceCapabilities2EXT where
  rawOffset = #{offset VkSurfaceCapabilities2EXT, supportedTransforms}

instance Offset "currentTransform" VkSurfaceCapabilities2EXT where
  rawOffset = #{offset VkSurfaceCapabilities2EXT, currentTransform}

instance Offset "supportedCompositeAlpha" VkSurfaceCapabilities2EXT where
  rawOffset = #{offset VkSurfaceCapabilities2EXT, supportedCompositeAlpha}

instance Offset "supportedUsageFlags" VkSurfaceCapabilities2EXT where
  rawOffset = #{offset VkSurfaceCapabilities2EXT, supportedUsageFlags}

instance Offset "supportedSurfaceCounters" VkSurfaceCapabilities2EXT where
  rawOffset = #{offset VkSurfaceCapabilities2EXT, supportedSurfaceCounters}

#else

module Vulkan.Types.Struct.VkSurfaceCapabilities2EXT where

#endif
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_surface_maintenance1

module Vulkan.Types.Struct.VkSurfacePresentScalingCapabilitiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPresentGravityFlagsEXT
import Vulkan.Types.Enum.VkPresentScalingFlagsEXT
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkExtent2D



data {-# CTYPE "vulkan/vulkan.h" "VkSurfacePresentScalingCapabilitiesEXT" #-} VkSurfacePresentScalingCapabilitiesEXT =
       VkSurfacePresentScalingCapabilitiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , supportedPresentScaling :: VkPresentScalingFlagsEXT
         , supportedPresentGravityX :: VkPresentGravityFlagsEXT
         , supportedPresentGravityY :: VkPresentGravityFlagsEXT
         , minScaledImageExtent :: VkExtent2D -- ^ Supported minimum image width and height for the surface when scaling is used
         , maxScaledImageExtent :: VkExtent2D -- ^ Supported maximum image width and height for the surface when scaling is used
         }

instance Storable VkSurfacePresentScalingCapabilitiesEXT where
  sizeOf    _ = #{size      struct VkSurfacePresentScalingCapabilitiesEXT}
  alignment _ = #{alignment struct VkSurfacePresentScalingCapabilitiesEXT}

  peek ptr = 
    VkSurfacePresentScalingCapabilitiesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"supportedPresentScaling" ptr)
       <*> peek (offset @"supportedPresentGravityX" ptr)
       <*> peek (offset @"supportedPresentGravityY" ptr)
       <*> peek (offset @"minScaledImageExtent" ptr)
       <*> peek (offset @"maxScaledImageExtent" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"supportedPresentScaling" ptr val
    pokeField @"supportedPresentGravityX" ptr val
    pokeField @"supportedPresentGravityY" ptr val
    pokeField @"minScaledImageExtent" ptr val
    pokeField @"maxScaledImageExtent" ptr val

instance Offset "sType" VkSurfacePresentScalingCapabilitiesEXT where
  rawOffset = #{offset struct VkSurfacePresentScalingCapabilitiesEXT, sType}

instance Offset "pNext" VkSurfacePresentScalingCapabilitiesEXT where
  rawOffset = #{offset struct VkSurfacePresentScalingCapabilitiesEXT, pNext}

instance Offset "supportedPresentScaling" VkSurfacePresentScalingCapabilitiesEXT where
  rawOffset = #{offset struct VkSurfacePresentScalingCapabilitiesEXT, supportedPresentScaling}

instance Offset "supportedPresentGravityX" VkSurfacePresentScalingCapabilitiesEXT where
  rawOffset = #{offset struct VkSurfacePresentScalingCapabilitiesEXT, supportedPresentGravityX}

instance Offset "supportedPresentGravityY" VkSurfacePresentScalingCapabilitiesEXT where
  rawOffset = #{offset struct VkSurfacePresentScalingCapabilitiesEXT, supportedPresentGravityY}

instance Offset "minScaledImageExtent" VkSurfacePresentScalingCapabilitiesEXT where
  rawOffset = #{offset struct VkSurfacePresentScalingCapabilitiesEXT, minScaledImageExtent}

instance Offset "maxScaledImageExtent" VkSurfacePresentScalingCapabilitiesEXT where
  rawOffset = #{offset struct VkSurfacePresentScalingCapabilitiesEXT, maxScaledImageExtent}

#else

module Vulkan.Types.Struct.VkSurfacePresentScalingCapabilitiesEXT where

#endif
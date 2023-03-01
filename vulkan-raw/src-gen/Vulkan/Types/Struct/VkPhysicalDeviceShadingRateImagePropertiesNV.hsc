{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_shading_rate_image

module Vulkan.Types.Struct.VkPhysicalDeviceShadingRateImagePropertiesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkExtent2D



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceShadingRateImagePropertiesNV" #-} VkPhysicalDeviceShadingRateImagePropertiesNV =
       VkPhysicalDeviceShadingRateImagePropertiesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shadingRateTexelSize :: VkExtent2D
         , shadingRatePaletteSize :: #{type uint32_t}
         , shadingRateMaxCoarseSamples :: #{type uint32_t}
         }

instance Storable VkPhysicalDeviceShadingRateImagePropertiesNV where
  sizeOf    _ = #{size      VkPhysicalDeviceShadingRateImagePropertiesNV}
  alignment _ = #{alignment VkPhysicalDeviceShadingRateImagePropertiesNV}

  peek ptr = 
    VkPhysicalDeviceShadingRateImagePropertiesNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shadingRateTexelSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shadingRatePaletteSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shadingRateMaxCoarseSamples" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shadingRateTexelSize" ptr val
    pokeField @"shadingRatePaletteSize" ptr val
    pokeField @"shadingRateMaxCoarseSamples" ptr val

instance Offset "sType" VkPhysicalDeviceShadingRateImagePropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceShadingRateImagePropertiesNV, sType}

instance Offset "pNext" VkPhysicalDeviceShadingRateImagePropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceShadingRateImagePropertiesNV, pNext}

instance Offset "shadingRateTexelSize" VkPhysicalDeviceShadingRateImagePropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceShadingRateImagePropertiesNV, shadingRateTexelSize}

instance Offset "shadingRatePaletteSize" VkPhysicalDeviceShadingRateImagePropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceShadingRateImagePropertiesNV, shadingRatePaletteSize}

instance Offset "shadingRateMaxCoarseSamples" VkPhysicalDeviceShadingRateImagePropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceShadingRateImagePropertiesNV, shadingRateMaxCoarseSamples}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShadingRateImagePropertiesNV where

#endif
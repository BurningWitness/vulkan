{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_shading_rate_image

module Vulkan.Types.Struct.VkPhysicalDeviceShadingRateImageFeaturesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceShadingRateImageFeaturesNV" #-} VkPhysicalDeviceShadingRateImageFeaturesNV =
       VkPhysicalDeviceShadingRateImageFeaturesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shadingRateImage :: VkBool32
         , shadingRateCoarseSampleOrder :: VkBool32
         }

instance Storable VkPhysicalDeviceShadingRateImageFeaturesNV where
  sizeOf    _ = #{size      struct VkPhysicalDeviceShadingRateImageFeaturesNV}
  alignment _ = #{alignment struct VkPhysicalDeviceShadingRateImageFeaturesNV}

  peek ptr = 
    VkPhysicalDeviceShadingRateImageFeaturesNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"shadingRateImage" ptr)
       <*> peek (offset @"shadingRateCoarseSampleOrder" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shadingRateImage" ptr val
    pokeField @"shadingRateCoarseSampleOrder" ptr val

instance Offset "sType" VkPhysicalDeviceShadingRateImageFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceShadingRateImageFeaturesNV, sType}

instance Offset "pNext" VkPhysicalDeviceShadingRateImageFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceShadingRateImageFeaturesNV, pNext}

instance Offset "shadingRateImage" VkPhysicalDeviceShadingRateImageFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceShadingRateImageFeaturesNV, shadingRateImage}

instance Offset "shadingRateCoarseSampleOrder" VkPhysicalDeviceShadingRateImageFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceShadingRateImageFeaturesNV, shadingRateCoarseSampleOrder}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShadingRateImageFeaturesNV where

#endif
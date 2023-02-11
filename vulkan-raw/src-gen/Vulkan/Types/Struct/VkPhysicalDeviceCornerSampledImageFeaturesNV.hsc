{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_corner_sampled_image

module Vulkan.Types.Struct.VkPhysicalDeviceCornerSampledImageFeaturesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceCornerSampledImageFeaturesNV" #-} VkPhysicalDeviceCornerSampledImageFeaturesNV =
       VkPhysicalDeviceCornerSampledImageFeaturesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , cornerSampledImage :: VkBool32
         }

instance Storable VkPhysicalDeviceCornerSampledImageFeaturesNV where
  sizeOf    _ = #{size      struct VkPhysicalDeviceCornerSampledImageFeaturesNV}
  alignment _ = #{alignment struct VkPhysicalDeviceCornerSampledImageFeaturesNV}

  peek ptr = 
    VkPhysicalDeviceCornerSampledImageFeaturesNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"cornerSampledImage" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"cornerSampledImage" ptr val

instance Offset "sType" VkPhysicalDeviceCornerSampledImageFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceCornerSampledImageFeaturesNV, sType}

instance Offset "pNext" VkPhysicalDeviceCornerSampledImageFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceCornerSampledImageFeaturesNV, pNext}

instance Offset "cornerSampledImage" VkPhysicalDeviceCornerSampledImageFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceCornerSampledImageFeaturesNV, cornerSampledImage}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceCornerSampledImageFeaturesNV where

#endif
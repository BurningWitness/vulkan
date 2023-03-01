{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkPhysicalDeviceCornerSampledImageFeaturesNV}
  alignment _ = #{alignment VkPhysicalDeviceCornerSampledImageFeaturesNV}

  peek ptr = 
    VkPhysicalDeviceCornerSampledImageFeaturesNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"cornerSampledImage" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"cornerSampledImage" ptr val

instance Offset "sType" VkPhysicalDeviceCornerSampledImageFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceCornerSampledImageFeaturesNV, sType}

instance Offset "pNext" VkPhysicalDeviceCornerSampledImageFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceCornerSampledImageFeaturesNV, pNext}

instance Offset "cornerSampledImage" VkPhysicalDeviceCornerSampledImageFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceCornerSampledImageFeaturesNV, cornerSampledImage}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceCornerSampledImageFeaturesNV where

#endif
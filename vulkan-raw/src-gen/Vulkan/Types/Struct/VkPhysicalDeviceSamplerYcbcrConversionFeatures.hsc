{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkPhysicalDeviceSamplerYcbcrConversionFeatures where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceSamplerYcbcrConversionFeatures" #-} VkPhysicalDeviceSamplerYcbcrConversionFeatures =
       VkPhysicalDeviceSamplerYcbcrConversionFeatures
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , samplerYcbcrConversion :: VkBool32 -- ^ Sampler color conversion supported
         }

instance Storable VkPhysicalDeviceSamplerYcbcrConversionFeatures where
  sizeOf    _ = #{size      struct VkPhysicalDeviceSamplerYcbcrConversionFeatures}
  alignment _ = #{alignment struct VkPhysicalDeviceSamplerYcbcrConversionFeatures}

  peek ptr = 
    VkPhysicalDeviceSamplerYcbcrConversionFeatures
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"samplerYcbcrConversion" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"samplerYcbcrConversion" ptr val

instance Offset "sType" VkPhysicalDeviceSamplerYcbcrConversionFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceSamplerYcbcrConversionFeatures, sType}

instance Offset "pNext" VkPhysicalDeviceSamplerYcbcrConversionFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceSamplerYcbcrConversionFeatures, pNext}

instance Offset "samplerYcbcrConversion" VkPhysicalDeviceSamplerYcbcrConversionFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceSamplerYcbcrConversionFeatures, samplerYcbcrConversion}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceSamplerYcbcrConversionFeatures where

#endif
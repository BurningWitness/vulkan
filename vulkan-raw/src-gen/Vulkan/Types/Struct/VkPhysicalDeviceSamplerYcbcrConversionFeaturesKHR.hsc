{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_sampler_ycbcr_conversion

module Vulkan.Types.Struct.VkPhysicalDeviceSamplerYcbcrConversionFeaturesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceSamplerYcbcrConversionFeaturesKHR" #-} VkPhysicalDeviceSamplerYcbcrConversionFeaturesKHR =
       VkPhysicalDeviceSamplerYcbcrConversionFeaturesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , samplerYcbcrConversion :: VkBool32 -- ^ Sampler color conversion supported
         }

instance Storable VkPhysicalDeviceSamplerYcbcrConversionFeaturesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceSamplerYcbcrConversionFeaturesKHR}
  alignment _ = #{alignment VkPhysicalDeviceSamplerYcbcrConversionFeaturesKHR}

  peek ptr = 
    VkPhysicalDeviceSamplerYcbcrConversionFeaturesKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"samplerYcbcrConversion" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"samplerYcbcrConversion" ptr val

instance Offset "sType" VkPhysicalDeviceSamplerYcbcrConversionFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceSamplerYcbcrConversionFeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceSamplerYcbcrConversionFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceSamplerYcbcrConversionFeaturesKHR, pNext}

instance Offset "samplerYcbcrConversion" VkPhysicalDeviceSamplerYcbcrConversionFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceSamplerYcbcrConversionFeaturesKHR, samplerYcbcrConversion}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceSamplerYcbcrConversionFeaturesKHR where

#endif
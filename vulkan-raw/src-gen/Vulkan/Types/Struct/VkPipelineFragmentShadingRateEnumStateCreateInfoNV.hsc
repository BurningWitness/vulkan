{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_fragment_shading_rate_enums

module Vulkan.Types.Struct.VkPipelineFragmentShadingRateEnumStateCreateInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkFragmentShadingRateCombinerOpKHR
import Vulkan.Types.Enum.VkFragmentShadingRateNV
import Vulkan.Types.Enum.VkFragmentShadingRateTypeNV
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineFragmentShadingRateEnumStateCreateInfoNV" #-} VkPipelineFragmentShadingRateEnumStateCreateInfoNV =
       VkPipelineFragmentShadingRateEnumStateCreateInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shadingRateType :: VkFragmentShadingRateTypeNV
         , shadingRate :: VkFragmentShadingRateNV
         , combinerOps :: VkFragmentShadingRateCombinerOpKHR
         }

instance Storable VkPipelineFragmentShadingRateEnumStateCreateInfoNV where
  sizeOf    _ = #{size      VkPipelineFragmentShadingRateEnumStateCreateInfoNV}
  alignment _ = #{alignment VkPipelineFragmentShadingRateEnumStateCreateInfoNV}

  peek ptr = 
    VkPipelineFragmentShadingRateEnumStateCreateInfoNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shadingRateType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shadingRate" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"combinerOps" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shadingRateType" ptr val
    pokeField @"shadingRate" ptr val
    pokeField @"combinerOps" ptr val

instance Offset "sType" VkPipelineFragmentShadingRateEnumStateCreateInfoNV where
  rawOffset = #{offset VkPipelineFragmentShadingRateEnumStateCreateInfoNV, sType}

instance Offset "pNext" VkPipelineFragmentShadingRateEnumStateCreateInfoNV where
  rawOffset = #{offset VkPipelineFragmentShadingRateEnumStateCreateInfoNV, pNext}

instance Offset "shadingRateType" VkPipelineFragmentShadingRateEnumStateCreateInfoNV where
  rawOffset = #{offset VkPipelineFragmentShadingRateEnumStateCreateInfoNV, shadingRateType}

instance Offset "shadingRate" VkPipelineFragmentShadingRateEnumStateCreateInfoNV where
  rawOffset = #{offset VkPipelineFragmentShadingRateEnumStateCreateInfoNV, shadingRate}

instance Offset "combinerOps" VkPipelineFragmentShadingRateEnumStateCreateInfoNV where
  rawOffset = #{offset VkPipelineFragmentShadingRateEnumStateCreateInfoNV, combinerOps}

#else

module Vulkan.Types.Struct.VkPipelineFragmentShadingRateEnumStateCreateInfoNV where

#endif
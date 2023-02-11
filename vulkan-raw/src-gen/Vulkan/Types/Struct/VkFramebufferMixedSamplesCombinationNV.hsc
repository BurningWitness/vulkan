{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_coverage_reduction_mode

module Vulkan.Types.Struct.VkFramebufferMixedSamplesCombinationNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkCoverageReductionModeNV
import Vulkan.Types.Enum.VkSampleCountFlagBits
import Vulkan.Types.Enum.VkSampleCountFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkFramebufferMixedSamplesCombinationNV" #-} VkFramebufferMixedSamplesCombinationNV =
       VkFramebufferMixedSamplesCombinationNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , coverageReductionMode :: VkCoverageReductionModeNV
         , rasterizationSamples :: VkSampleCountFlagBits
         , depthStencilSamples :: VkSampleCountFlags
         , colorSamples :: VkSampleCountFlags
         }

instance Storable VkFramebufferMixedSamplesCombinationNV where
  sizeOf    _ = #{size      struct VkFramebufferMixedSamplesCombinationNV}
  alignment _ = #{alignment struct VkFramebufferMixedSamplesCombinationNV}

  peek ptr = 
    VkFramebufferMixedSamplesCombinationNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"coverageReductionMode" ptr)
       <*> peek (offset @"rasterizationSamples" ptr)
       <*> peek (offset @"depthStencilSamples" ptr)
       <*> peek (offset @"colorSamples" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"coverageReductionMode" ptr val
    pokeField @"rasterizationSamples" ptr val
    pokeField @"depthStencilSamples" ptr val
    pokeField @"colorSamples" ptr val

instance Offset "sType" VkFramebufferMixedSamplesCombinationNV where
  rawOffset = #{offset struct VkFramebufferMixedSamplesCombinationNV, sType}

instance Offset "pNext" VkFramebufferMixedSamplesCombinationNV where
  rawOffset = #{offset struct VkFramebufferMixedSamplesCombinationNV, pNext}

instance Offset "coverageReductionMode" VkFramebufferMixedSamplesCombinationNV where
  rawOffset = #{offset struct VkFramebufferMixedSamplesCombinationNV, coverageReductionMode}

instance Offset "rasterizationSamples" VkFramebufferMixedSamplesCombinationNV where
  rawOffset = #{offset struct VkFramebufferMixedSamplesCombinationNV, rasterizationSamples}

instance Offset "depthStencilSamples" VkFramebufferMixedSamplesCombinationNV where
  rawOffset = #{offset struct VkFramebufferMixedSamplesCombinationNV, depthStencilSamples}

instance Offset "colorSamples" VkFramebufferMixedSamplesCombinationNV where
  rawOffset = #{offset struct VkFramebufferMixedSamplesCombinationNV, colorSamples}

#else

module Vulkan.Types.Struct.VkFramebufferMixedSamplesCombinationNV where

#endif
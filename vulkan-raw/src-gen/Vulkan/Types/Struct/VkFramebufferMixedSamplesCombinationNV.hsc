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
  sizeOf    _ = #{size      VkFramebufferMixedSamplesCombinationNV}
  alignment _ = #{alignment VkFramebufferMixedSamplesCombinationNV}

  peek ptr = 
    VkFramebufferMixedSamplesCombinationNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"coverageReductionMode" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"rasterizationSamples" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"depthStencilSamples" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"colorSamples" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"coverageReductionMode" ptr val
    pokeField @"rasterizationSamples" ptr val
    pokeField @"depthStencilSamples" ptr val
    pokeField @"colorSamples" ptr val

instance Offset "sType" VkFramebufferMixedSamplesCombinationNV where
  rawOffset = #{offset VkFramebufferMixedSamplesCombinationNV, sType}

instance Offset "pNext" VkFramebufferMixedSamplesCombinationNV where
  rawOffset = #{offset VkFramebufferMixedSamplesCombinationNV, pNext}

instance Offset "coverageReductionMode" VkFramebufferMixedSamplesCombinationNV where
  rawOffset = #{offset VkFramebufferMixedSamplesCombinationNV, coverageReductionMode}

instance Offset "rasterizationSamples" VkFramebufferMixedSamplesCombinationNV where
  rawOffset = #{offset VkFramebufferMixedSamplesCombinationNV, rasterizationSamples}

instance Offset "depthStencilSamples" VkFramebufferMixedSamplesCombinationNV where
  rawOffset = #{offset VkFramebufferMixedSamplesCombinationNV, depthStencilSamples}

instance Offset "colorSamples" VkFramebufferMixedSamplesCombinationNV where
  rawOffset = #{offset VkFramebufferMixedSamplesCombinationNV, colorSamples}

#else

module Vulkan.Types.Struct.VkFramebufferMixedSamplesCombinationNV where

#endif
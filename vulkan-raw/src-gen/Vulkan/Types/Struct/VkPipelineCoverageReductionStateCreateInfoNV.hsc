{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_coverage_reduction_mode

module Vulkan.Types.Struct.VkPipelineCoverageReductionStateCreateInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkCoverageReductionModeNV
import Vulkan.Types.Enum.VkPipelineCoverageReductionStateCreateFlagsNV
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineCoverageReductionStateCreateInfoNV" #-} VkPipelineCoverageReductionStateCreateInfoNV =
       VkPipelineCoverageReductionStateCreateInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkPipelineCoverageReductionStateCreateFlagsNV
         , coverageReductionMode :: VkCoverageReductionModeNV
         }

instance Storable VkPipelineCoverageReductionStateCreateInfoNV where
  sizeOf    _ = #{size      VkPipelineCoverageReductionStateCreateInfoNV}
  alignment _ = #{alignment VkPipelineCoverageReductionStateCreateInfoNV}

  peek ptr = 
    VkPipelineCoverageReductionStateCreateInfoNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"coverageReductionMode" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"coverageReductionMode" ptr val

instance Offset "sType" VkPipelineCoverageReductionStateCreateInfoNV where
  rawOffset = #{offset VkPipelineCoverageReductionStateCreateInfoNV, sType}

instance Offset "pNext" VkPipelineCoverageReductionStateCreateInfoNV where
  rawOffset = #{offset VkPipelineCoverageReductionStateCreateInfoNV, pNext}

instance Offset "flags" VkPipelineCoverageReductionStateCreateInfoNV where
  rawOffset = #{offset VkPipelineCoverageReductionStateCreateInfoNV, flags}

instance Offset "coverageReductionMode" VkPipelineCoverageReductionStateCreateInfoNV where
  rawOffset = #{offset VkPipelineCoverageReductionStateCreateInfoNV, coverageReductionMode}

#else

module Vulkan.Types.Struct.VkPipelineCoverageReductionStateCreateInfoNV where

#endif
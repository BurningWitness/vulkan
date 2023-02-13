{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_framebuffer_mixed_samples

module Vulkan.Types.Struct.VkPipelineCoverageModulationStateCreateInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkCoverageModulationModeNV
import Vulkan.Types.Enum.VkPipelineCoverageModulationStateCreateFlagsNV
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineCoverageModulationStateCreateInfoNV" #-} VkPipelineCoverageModulationStateCreateInfoNV =
       VkPipelineCoverageModulationStateCreateInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkPipelineCoverageModulationStateCreateFlagsNV
         , coverageModulationMode :: VkCoverageModulationModeNV
         , coverageModulationTableEnable :: VkBool32
         , coverageModulationTableCount :: #{type uint32_t}
         , pCoverageModulationTable :: Ptr #{type float}
         }

instance Storable VkPipelineCoverageModulationStateCreateInfoNV where
  sizeOf    _ = #{size      VkPipelineCoverageModulationStateCreateInfoNV}
  alignment _ = #{alignment VkPipelineCoverageModulationStateCreateInfoNV}

  peek ptr = 
    VkPipelineCoverageModulationStateCreateInfoNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"coverageModulationMode" ptr)
       <*> peek (offset @"coverageModulationTableEnable" ptr)
       <*> peek (offset @"coverageModulationTableCount" ptr)
       <*> peek (offset @"pCoverageModulationTable" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"coverageModulationMode" ptr val
    pokeField @"coverageModulationTableEnable" ptr val
    pokeField @"coverageModulationTableCount" ptr val
    pokeField @"pCoverageModulationTable" ptr val

instance Offset "sType" VkPipelineCoverageModulationStateCreateInfoNV where
  rawOffset = #{offset VkPipelineCoverageModulationStateCreateInfoNV, sType}

instance Offset "pNext" VkPipelineCoverageModulationStateCreateInfoNV where
  rawOffset = #{offset VkPipelineCoverageModulationStateCreateInfoNV, pNext}

instance Offset "flags" VkPipelineCoverageModulationStateCreateInfoNV where
  rawOffset = #{offset VkPipelineCoverageModulationStateCreateInfoNV, flags}

instance Offset "coverageModulationMode" VkPipelineCoverageModulationStateCreateInfoNV where
  rawOffset = #{offset VkPipelineCoverageModulationStateCreateInfoNV, coverageModulationMode}

instance Offset "coverageModulationTableEnable" VkPipelineCoverageModulationStateCreateInfoNV where
  rawOffset = #{offset VkPipelineCoverageModulationStateCreateInfoNV, coverageModulationTableEnable}

instance Offset "coverageModulationTableCount" VkPipelineCoverageModulationStateCreateInfoNV where
  rawOffset = #{offset VkPipelineCoverageModulationStateCreateInfoNV, coverageModulationTableCount}

instance Offset "pCoverageModulationTable" VkPipelineCoverageModulationStateCreateInfoNV where
  rawOffset = #{offset VkPipelineCoverageModulationStateCreateInfoNV, pCoverageModulationTable}

#else

module Vulkan.Types.Struct.VkPipelineCoverageModulationStateCreateInfoNV where

#endif
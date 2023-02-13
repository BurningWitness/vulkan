{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_device_generated_commands

module Vulkan.Types.Struct.VkGeneratedCommandsMemoryRequirementsInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPipelineBindPoint
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkGeneratedCommandsMemoryRequirementsInfoNV" #-} VkGeneratedCommandsMemoryRequirementsInfoNV =
       VkGeneratedCommandsMemoryRequirementsInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pipelineBindPoint :: VkPipelineBindPoint
         , pipeline :: VkPipeline
         , indirectCommandsLayout :: VkIndirectCommandsLayoutNV
         , maxSequencesCount :: #{type uint32_t}
         }

instance Storable VkGeneratedCommandsMemoryRequirementsInfoNV where
  sizeOf    _ = #{size      VkGeneratedCommandsMemoryRequirementsInfoNV}
  alignment _ = #{alignment VkGeneratedCommandsMemoryRequirementsInfoNV}

  peek ptr = 
    VkGeneratedCommandsMemoryRequirementsInfoNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"pipelineBindPoint" ptr)
       <*> peek (offset @"pipeline" ptr)
       <*> peek (offset @"indirectCommandsLayout" ptr)
       <*> peek (offset @"maxSequencesCount" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pipelineBindPoint" ptr val
    pokeField @"pipeline" ptr val
    pokeField @"indirectCommandsLayout" ptr val
    pokeField @"maxSequencesCount" ptr val

instance Offset "sType" VkGeneratedCommandsMemoryRequirementsInfoNV where
  rawOffset = #{offset VkGeneratedCommandsMemoryRequirementsInfoNV, sType}

instance Offset "pNext" VkGeneratedCommandsMemoryRequirementsInfoNV where
  rawOffset = #{offset VkGeneratedCommandsMemoryRequirementsInfoNV, pNext}

instance Offset "pipelineBindPoint" VkGeneratedCommandsMemoryRequirementsInfoNV where
  rawOffset = #{offset VkGeneratedCommandsMemoryRequirementsInfoNV, pipelineBindPoint}

instance Offset "pipeline" VkGeneratedCommandsMemoryRequirementsInfoNV where
  rawOffset = #{offset VkGeneratedCommandsMemoryRequirementsInfoNV, pipeline}

instance Offset "indirectCommandsLayout" VkGeneratedCommandsMemoryRequirementsInfoNV where
  rawOffset = #{offset VkGeneratedCommandsMemoryRequirementsInfoNV, indirectCommandsLayout}

instance Offset "maxSequencesCount" VkGeneratedCommandsMemoryRequirementsInfoNV where
  rawOffset = #{offset VkGeneratedCommandsMemoryRequirementsInfoNV, maxSequencesCount}

#else

module Vulkan.Types.Struct.VkGeneratedCommandsMemoryRequirementsInfoNV where

#endif
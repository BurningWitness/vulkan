{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkPipelineCreationFeedbackCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPipelineCreationFeedback



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineCreationFeedbackCreateInfo" #-} VkPipelineCreationFeedbackCreateInfo =
       VkPipelineCreationFeedbackCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pPipelineCreationFeedback :: Ptr VkPipelineCreationFeedback -- ^ Output pipeline creation feedback.
         , pipelineStageCreationFeedbackCount :: #{type uint32_t}
         , pPipelineStageCreationFeedbacks :: Ptr VkPipelineCreationFeedback -- ^ One entry for each shader stage specified in the parent Vk*PipelineCreateInfo struct
         }

instance Storable VkPipelineCreationFeedbackCreateInfo where
  sizeOf    _ = #{size      VkPipelineCreationFeedbackCreateInfo}
  alignment _ = #{alignment VkPipelineCreationFeedbackCreateInfo}

  peek ptr = 
    VkPipelineCreationFeedbackCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"pPipelineCreationFeedback" ptr)
       <*> peek (offset @"pipelineStageCreationFeedbackCount" ptr)
       <*> peek (offset @"pPipelineStageCreationFeedbacks" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pPipelineCreationFeedback" ptr val
    pokeField @"pipelineStageCreationFeedbackCount" ptr val
    pokeField @"pPipelineStageCreationFeedbacks" ptr val

instance Offset "sType" VkPipelineCreationFeedbackCreateInfo where
  rawOffset = #{offset VkPipelineCreationFeedbackCreateInfo, sType}

instance Offset "pNext" VkPipelineCreationFeedbackCreateInfo where
  rawOffset = #{offset VkPipelineCreationFeedbackCreateInfo, pNext}

instance Offset "pPipelineCreationFeedback" VkPipelineCreationFeedbackCreateInfo where
  rawOffset = #{offset VkPipelineCreationFeedbackCreateInfo, pPipelineCreationFeedback}

instance Offset "pipelineStageCreationFeedbackCount" VkPipelineCreationFeedbackCreateInfo where
  rawOffset = #{offset VkPipelineCreationFeedbackCreateInfo, pipelineStageCreationFeedbackCount}

instance Offset "pPipelineStageCreationFeedbacks" VkPipelineCreationFeedbackCreateInfo where
  rawOffset = #{offset VkPipelineCreationFeedbackCreateInfo, pPipelineStageCreationFeedbacks}

#else

module Vulkan.Types.Struct.VkPipelineCreationFeedbackCreateInfo where

#endif
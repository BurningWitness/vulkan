{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_pipeline_creation_feedback

module Vulkan.Types.Struct.VkPipelineCreationFeedbackCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPipelineCreationFeedback



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineCreationFeedbackCreateInfoEXT" #-} VkPipelineCreationFeedbackCreateInfoEXT =
       VkPipelineCreationFeedbackCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pPipelineCreationFeedback :: Ptr VkPipelineCreationFeedback -- ^ Output pipeline creation feedback.
         , pipelineStageCreationFeedbackCount :: #{type uint32_t}
         , pPipelineStageCreationFeedbacks :: Ptr VkPipelineCreationFeedback -- ^ One entry for each shader stage specified in the parent Vk*PipelineCreateInfo struct
         }

instance Storable VkPipelineCreationFeedbackCreateInfoEXT where
  sizeOf    _ = #{size      VkPipelineCreationFeedbackCreateInfoEXT}
  alignment _ = #{alignment VkPipelineCreationFeedbackCreateInfoEXT}

  peek ptr = 
    VkPipelineCreationFeedbackCreateInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pPipelineCreationFeedback" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pipelineStageCreationFeedbackCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pPipelineStageCreationFeedbacks" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pPipelineCreationFeedback" ptr val
    pokeField @"pipelineStageCreationFeedbackCount" ptr val
    pokeField @"pPipelineStageCreationFeedbacks" ptr val

instance Offset "sType" VkPipelineCreationFeedbackCreateInfoEXT where
  rawOffset = #{offset VkPipelineCreationFeedbackCreateInfoEXT, sType}

instance Offset "pNext" VkPipelineCreationFeedbackCreateInfoEXT where
  rawOffset = #{offset VkPipelineCreationFeedbackCreateInfoEXT, pNext}

instance Offset "pPipelineCreationFeedback" VkPipelineCreationFeedbackCreateInfoEXT where
  rawOffset = #{offset VkPipelineCreationFeedbackCreateInfoEXT, pPipelineCreationFeedback}

instance Offset "pipelineStageCreationFeedbackCount" VkPipelineCreationFeedbackCreateInfoEXT where
  rawOffset = #{offset VkPipelineCreationFeedbackCreateInfoEXT, pipelineStageCreationFeedbackCount}

instance Offset "pPipelineStageCreationFeedbacks" VkPipelineCreationFeedbackCreateInfoEXT where
  rawOffset = #{offset VkPipelineCreationFeedbackCreateInfoEXT, pPipelineStageCreationFeedbacks}

#else

module Vulkan.Types.Struct.VkPipelineCreationFeedbackCreateInfoEXT where

#endif
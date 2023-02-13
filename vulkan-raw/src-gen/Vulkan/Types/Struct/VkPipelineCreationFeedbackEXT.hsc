{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_pipeline_creation_feedback

module Vulkan.Types.Struct.VkPipelineCreationFeedbackEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPipelineCreationFeedbackFlags



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineCreationFeedbackEXT" #-} VkPipelineCreationFeedbackEXT =
       VkPipelineCreationFeedbackEXT
         { flags :: VkPipelineCreationFeedbackFlags
         , duration :: #{type uint64_t}
         }

instance Storable VkPipelineCreationFeedbackEXT where
  sizeOf    _ = #{size      VkPipelineCreationFeedbackEXT}
  alignment _ = #{alignment VkPipelineCreationFeedbackEXT}

  peek ptr = 
    VkPipelineCreationFeedbackEXT
       <$> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"duration" ptr)

  poke ptr val = do
    pokeField @"flags" ptr val
    pokeField @"duration" ptr val

instance Offset "flags" VkPipelineCreationFeedbackEXT where
  rawOffset = #{offset VkPipelineCreationFeedbackEXT, flags}

instance Offset "duration" VkPipelineCreationFeedbackEXT where
  rawOffset = #{offset VkPipelineCreationFeedbackEXT, duration}

#else

module Vulkan.Types.Struct.VkPipelineCreationFeedbackEXT where

#endif
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkPipelineCreationFeedback where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPipelineCreationFeedbackFlags



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineCreationFeedback" #-} VkPipelineCreationFeedback =
       VkPipelineCreationFeedback
         { flags :: VkPipelineCreationFeedbackFlags
         , duration :: #{type uint64_t}
         }

instance Storable VkPipelineCreationFeedback where
  sizeOf    _ = #{size      VkPipelineCreationFeedback}
  alignment _ = #{alignment VkPipelineCreationFeedback}

  peek ptr = 
    VkPipelineCreationFeedback
       <$> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"duration" ptr)

  poke ptr val = do
    pokeField @"flags" ptr val
    pokeField @"duration" ptr val

instance Offset "flags" VkPipelineCreationFeedback where
  rawOffset = #{offset VkPipelineCreationFeedback, flags}

instance Offset "duration" VkPipelineCreationFeedback where
  rawOffset = #{offset VkPipelineCreationFeedback, duration}

#else

module Vulkan.Types.Struct.VkPipelineCreationFeedback where

#endif
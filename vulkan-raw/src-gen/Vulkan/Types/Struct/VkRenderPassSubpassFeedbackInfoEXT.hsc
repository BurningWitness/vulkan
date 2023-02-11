{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_subpass_merge_feedback

module Vulkan.Types.Struct.VkRenderPassSubpassFeedbackInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkSubpassMergeStatusEXT



data {-# CTYPE "vulkan/vulkan.h" "VkRenderPassSubpassFeedbackInfoEXT" #-} VkRenderPassSubpassFeedbackInfoEXT =
       VkRenderPassSubpassFeedbackInfoEXT
         { subpassMergeStatus :: VkSubpassMergeStatusEXT
         , description :: #{type char}
         , postMergeIndex :: #{type uint32_t}
         }

instance Storable VkRenderPassSubpassFeedbackInfoEXT where
  sizeOf    _ = #{size      struct VkRenderPassSubpassFeedbackInfoEXT}
  alignment _ = #{alignment struct VkRenderPassSubpassFeedbackInfoEXT}

  peek ptr = 
    VkRenderPassSubpassFeedbackInfoEXT
       <$> peek (offset @"subpassMergeStatus" ptr)
       <*> peek (offset @"description" ptr)
       <*> peek (offset @"postMergeIndex" ptr)

  poke ptr val = do
    pokeField @"subpassMergeStatus" ptr val
    pokeField @"description" ptr val
    pokeField @"postMergeIndex" ptr val

instance Offset "subpassMergeStatus" VkRenderPassSubpassFeedbackInfoEXT where
  rawOffset = #{offset struct VkRenderPassSubpassFeedbackInfoEXT, subpassMergeStatus}

instance Offset "description" VkRenderPassSubpassFeedbackInfoEXT where
  rawOffset = #{offset struct VkRenderPassSubpassFeedbackInfoEXT, description}

instance Offset "postMergeIndex" VkRenderPassSubpassFeedbackInfoEXT where
  rawOffset = #{offset struct VkRenderPassSubpassFeedbackInfoEXT, postMergeIndex}

#else

module Vulkan.Types.Struct.VkRenderPassSubpassFeedbackInfoEXT where

#endif
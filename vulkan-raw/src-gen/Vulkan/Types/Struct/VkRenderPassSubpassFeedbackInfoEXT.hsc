{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkRenderPassSubpassFeedbackInfoEXT}
  alignment _ = #{alignment VkRenderPassSubpassFeedbackInfoEXT}

  peek ptr = 
    VkRenderPassSubpassFeedbackInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"subpassMergeStatus" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"description" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"postMergeIndex" ptr)

  poke ptr val = do
    pokeField @"subpassMergeStatus" ptr val
    pokeField @"description" ptr val
    pokeField @"postMergeIndex" ptr val

instance Offset "subpassMergeStatus" VkRenderPassSubpassFeedbackInfoEXT where
  rawOffset = #{offset VkRenderPassSubpassFeedbackInfoEXT, subpassMergeStatus}

instance Offset "description" VkRenderPassSubpassFeedbackInfoEXT where
  rawOffset = #{offset VkRenderPassSubpassFeedbackInfoEXT, description}

instance Offset "postMergeIndex" VkRenderPassSubpassFeedbackInfoEXT where
  rawOffset = #{offset VkRenderPassSubpassFeedbackInfoEXT, postMergeIndex}

#else

module Vulkan.Types.Struct.VkRenderPassSubpassFeedbackInfoEXT where

#endif
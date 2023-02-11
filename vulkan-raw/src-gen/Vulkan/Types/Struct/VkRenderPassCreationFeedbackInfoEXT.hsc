{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_subpass_merge_feedback

module Vulkan.Types.Struct.VkRenderPassCreationFeedbackInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkRenderPassCreationFeedbackInfoEXT" #-} VkRenderPassCreationFeedbackInfoEXT =
       VkRenderPassCreationFeedbackInfoEXT
         { postMergeSubpassCount :: #{type uint32_t}
         }

instance Storable VkRenderPassCreationFeedbackInfoEXT where
  sizeOf    _ = #{size      struct VkRenderPassCreationFeedbackInfoEXT}
  alignment _ = #{alignment struct VkRenderPassCreationFeedbackInfoEXT}

  peek ptr = 
    VkRenderPassCreationFeedbackInfoEXT
       <$> peek (offset @"postMergeSubpassCount" ptr)


  poke ptr val = do
    pokeField @"postMergeSubpassCount" ptr val

instance Offset "postMergeSubpassCount" VkRenderPassCreationFeedbackInfoEXT where
  rawOffset = #{offset struct VkRenderPassCreationFeedbackInfoEXT, postMergeSubpassCount}

#else

module Vulkan.Types.Struct.VkRenderPassCreationFeedbackInfoEXT where

#endif
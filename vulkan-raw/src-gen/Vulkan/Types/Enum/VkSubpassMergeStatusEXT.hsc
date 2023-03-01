{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSubpassMergeStatusEXT where

import Data.Int



#if VK_EXT_subpass_merge_feedback
type VkSubpassMergeStatusEXT = #{type int}
#endif

#if VK_EXT_subpass_merge_feedback
pattern VK_SUBPASS_MERGE_STATUS_MERGED_EXT :: (Eq a, Num a) => a
pattern VK_SUBPASS_MERGE_STATUS_MERGED_EXT = 0
#endif

#if VK_EXT_subpass_merge_feedback
pattern VK_SUBPASS_MERGE_STATUS_DISALLOWED_EXT :: (Eq a, Num a) => a
pattern VK_SUBPASS_MERGE_STATUS_DISALLOWED_EXT = 1
#endif

#if VK_EXT_subpass_merge_feedback
pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_SIDE_EFFECTS_EXT :: (Eq a, Num a) => a
pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_SIDE_EFFECTS_EXT = 2
#endif

#if VK_EXT_subpass_merge_feedback
pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_SAMPLES_MISMATCH_EXT :: (Eq a, Num a) => a
pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_SAMPLES_MISMATCH_EXT = 3
#endif

#if VK_EXT_subpass_merge_feedback
pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_VIEWS_MISMATCH_EXT :: (Eq a, Num a) => a
pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_VIEWS_MISMATCH_EXT = 4
#endif

#if VK_EXT_subpass_merge_feedback
pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_ALIASING_EXT :: (Eq a, Num a) => a
pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_ALIASING_EXT = 5
#endif

#if VK_EXT_subpass_merge_feedback
pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_DEPENDENCIES_EXT :: (Eq a, Num a) => a
pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_DEPENDENCIES_EXT = 6
#endif

#if VK_EXT_subpass_merge_feedback
pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_INCOMPATIBLE_INPUT_ATTACHMENT_EXT :: (Eq a, Num a) => a
pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_INCOMPATIBLE_INPUT_ATTACHMENT_EXT = 7
#endif

#if VK_EXT_subpass_merge_feedback
pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_TOO_MANY_ATTACHMENTS_EXT :: (Eq a, Num a) => a
pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_TOO_MANY_ATTACHMENTS_EXT = 8
#endif

#if VK_EXT_subpass_merge_feedback
pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_INSUFFICIENT_STORAGE_EXT :: (Eq a, Num a) => a
pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_INSUFFICIENT_STORAGE_EXT = 9
#endif

#if VK_EXT_subpass_merge_feedback
pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_DEPTH_STENCIL_COUNT_EXT :: (Eq a, Num a) => a
pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_DEPTH_STENCIL_COUNT_EXT = 10
#endif

#if VK_EXT_subpass_merge_feedback
pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_RESOLVE_ATTACHMENT_REUSE_EXT :: (Eq a, Num a) => a
pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_RESOLVE_ATTACHMENT_REUSE_EXT = 11
#endif

#if VK_EXT_subpass_merge_feedback
pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_SINGLE_SUBPASS_EXT :: (Eq a, Num a) => a
pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_SINGLE_SUBPASS_EXT = 12
#endif

#if VK_EXT_subpass_merge_feedback
pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_UNSPECIFIED_EXT :: (Eq a, Num a) => a
pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_UNSPECIFIED_EXT = 13
#endif
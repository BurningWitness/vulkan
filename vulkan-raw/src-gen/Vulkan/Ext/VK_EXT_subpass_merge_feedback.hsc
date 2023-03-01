{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_subpass_merge_feedback

module Vulkan.Ext.VK_EXT_subpass_merge_feedback
  ( pattern VK_EXT_SUBPASS_MERGE_FEEDBACK_SPEC_VERSION
  , pattern VK_EXT_SUBPASS_MERGE_FEEDBACK_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBPASS_MERGE_FEEDBACK_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_RENDER_PASS_CREATION_CONTROL_EXT
  , pattern VK_STRUCTURE_TYPE_RENDER_PASS_CREATION_FEEDBACK_CREATE_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_RENDER_PASS_SUBPASS_FEEDBACK_CREATE_INFO_EXT
  , VkPhysicalDeviceSubpassMergeFeedbackFeaturesEXT (..)
  , VkRenderPassCreationControlEXT (..)
  , VkRenderPassCreationFeedbackInfoEXT (..)
  , VkRenderPassCreationFeedbackCreateInfoEXT (..)
  , VkRenderPassSubpassFeedbackInfoEXT (..)
  , VkRenderPassSubpassFeedbackCreateInfoEXT (..)
  , VkSubpassMergeStatusEXT
  , pattern VK_SUBPASS_MERGE_STATUS_MERGED_EXT
  , pattern VK_SUBPASS_MERGE_STATUS_DISALLOWED_EXT
  , pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_SIDE_EFFECTS_EXT
  , pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_SAMPLES_MISMATCH_EXT
  , pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_VIEWS_MISMATCH_EXT
  , pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_ALIASING_EXT
  , pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_DEPENDENCIES_EXT
  , pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_INCOMPATIBLE_INPUT_ATTACHMENT_EXT
  , pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_TOO_MANY_ATTACHMENTS_EXT
  , pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_INSUFFICIENT_STORAGE_EXT
  , pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_DEPTH_STENCIL_COUNT_EXT
  , pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_RESOLVE_ATTACHMENT_REUSE_EXT
  , pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_SINGLE_SUBPASS_EXT
  , pattern VK_SUBPASS_MERGE_STATUS_NOT_MERGED_UNSPECIFIED_EXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkSubpassMergeStatusEXT
import Vulkan.Types.Struct.VkPhysicalDeviceSubpassMergeFeedbackFeaturesEXT
import Vulkan.Types.Struct.VkRenderPassCreationControlEXT
import Vulkan.Types.Struct.VkRenderPassCreationFeedbackCreateInfoEXT
import Vulkan.Types.Struct.VkRenderPassCreationFeedbackInfoEXT
import Vulkan.Types.Struct.VkRenderPassSubpassFeedbackCreateInfoEXT
import Vulkan.Types.Struct.VkRenderPassSubpassFeedbackInfoEXT
import Vulkan.Types.VkFun



pattern VK_EXT_SUBPASS_MERGE_FEEDBACK_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_SUBPASS_MERGE_FEEDBACK_SPEC_VERSION = 2

pattern VK_EXT_SUBPASS_MERGE_FEEDBACK_EXTENSION_NAME :: CString
pattern VK_EXT_SUBPASS_MERGE_FEEDBACK_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_SUBPASS_MERGE_FEEDBACK_EXTENSION_NAME = Ptr ("VK_EXT_subpass_merge_feedback\0"##)

#else

module Vulkan.Ext.VK_EXT_subpass_merge_feedback where

#endif
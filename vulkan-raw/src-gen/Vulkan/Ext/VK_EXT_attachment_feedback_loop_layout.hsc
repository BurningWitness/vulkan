{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_attachment_feedback_loop_layout

module Vulkan.Ext.VK_EXT_attachment_feedback_loop_layout
  ( pattern VK_EXT_ATTACHMENT_FEEDBACK_LOOP_LAYOUT_SPEC_VERSION
  , pattern VK_EXT_ATTACHMENT_FEEDBACK_LOOP_LAYOUT_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ATTACHMENT_FEEDBACK_LOOP_LAYOUT_FEATURES_EXT
  , pattern VK_IMAGE_LAYOUT_ATTACHMENT_FEEDBACK_LOOP_OPTIMAL_EXT
  , pattern VK_IMAGE_USAGE_ATTACHMENT_FEEDBACK_LOOP_BIT_EXT
  , pattern VK_PIPELINE_CREATE_COLOR_ATTACHMENT_FEEDBACK_LOOP_BIT_EXT
  , pattern VK_PIPELINE_CREATE_DEPTH_STENCIL_ATTACHMENT_FEEDBACK_LOOP_BIT_EXT
  , pattern VK_DEPENDENCY_FEEDBACK_LOOP_BIT_EXT
  , VkPhysicalDeviceAttachmentFeedbackLoopLayoutFeaturesEXT (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkDependencyFlagBits
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkImageUsageFlagBits
import Vulkan.Types.Enum.VkPipelineCreateFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceAttachmentFeedbackLoopLayoutFeaturesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_ATTACHMENT_FEEDBACK_LOOP_LAYOUT_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_ATTACHMENT_FEEDBACK_LOOP_LAYOUT_SPEC_VERSION = 2

pattern VK_EXT_ATTACHMENT_FEEDBACK_LOOP_LAYOUT_EXTENSION_NAME :: CString
pattern VK_EXT_ATTACHMENT_FEEDBACK_LOOP_LAYOUT_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_ATTACHMENT_FEEDBACK_LOOP_LAYOUT_EXTENSION_NAME = Ptr ("VK_EXT_attachment_feedback_loop_layout\0"##)

#else

module Vulkan.Ext.VK_EXT_attachment_feedback_loop_layout where

#endif
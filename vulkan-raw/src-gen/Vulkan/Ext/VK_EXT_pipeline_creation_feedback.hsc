{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_pipeline_creation_feedback

module Vulkan.Ext.VK_EXT_pipeline_creation_feedback
  ( pattern VK_EXT_PIPELINE_CREATION_FEEDBACK_SPEC_VERSION
  , pattern VK_EXT_PIPELINE_CREATION_FEEDBACK_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PIPELINE_CREATION_FEEDBACK_CREATE_INFO_EXT
  , VkPipelineCreationFeedbackFlagBitsEXT
  , VkPipelineCreationFeedbackFlagsEXT
  , VkPipelineCreationFeedbackCreateInfoEXT
  , VkPipelineCreationFeedbackEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkPipelineCreationFeedbackFlagBitsEXT
import Vulkan.Types.Enum.VkPipelineCreationFeedbackFlagsEXT
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPipelineCreationFeedbackCreateInfoEXT
import Vulkan.Types.Struct.VkPipelineCreationFeedbackEXT
import Vulkan.Types.VkFun



pattern VK_EXT_PIPELINE_CREATION_FEEDBACK_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_PIPELINE_CREATION_FEEDBACK_SPEC_VERSION = 1

pattern VK_EXT_PIPELINE_CREATION_FEEDBACK_EXTENSION_NAME :: CString
pattern VK_EXT_PIPELINE_CREATION_FEEDBACK_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_PIPELINE_CREATION_FEEDBACK_EXTENSION_NAME = Ptr ("VK_EXT_pipeline_creation_feedback\0"##)

#else

module Vulkan.Ext.VK_EXT_pipeline_creation_feedback where

#endif
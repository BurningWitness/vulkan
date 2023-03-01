{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_transform_feedback

module Vulkan.Ext.VK_EXT_transform_feedback
  ( pattern VK_EXT_TRANSFORM_FEEDBACK_SPEC_VERSION
  , pattern VK_EXT_TRANSFORM_FEEDBACK_EXTENSION_NAME
  , VkCmdBindTransformFeedbackBuffersEXT
  , vkFunCmdBindTransformFeedbackBuffersEXT
  , VkCmdBeginTransformFeedbackEXT
  , vkFunCmdBeginTransformFeedbackEXT
  , VkCmdEndTransformFeedbackEXT
  , vkFunCmdEndTransformFeedbackEXT
  , VkCmdBeginQueryIndexedEXT
  , vkFunCmdBeginQueryIndexedEXT
  , VkCmdEndQueryIndexedEXT
  , vkFunCmdEndQueryIndexedEXT
  , VkCmdDrawIndirectByteCountEXT
  , vkFunCmdDrawIndirectByteCountEXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TRANSFORM_FEEDBACK_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TRANSFORM_FEEDBACK_PROPERTIES_EXT
  , pattern VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_STREAM_CREATE_INFO_EXT
  , pattern VK_QUERY_TYPE_TRANSFORM_FEEDBACK_STREAM_EXT
  , pattern VK_BUFFER_USAGE_TRANSFORM_FEEDBACK_BUFFER_BIT_EXT
  , pattern VK_BUFFER_USAGE_TRANSFORM_FEEDBACK_COUNTER_BUFFER_BIT_EXT
  , pattern VK_ACCESS_TRANSFORM_FEEDBACK_WRITE_BIT_EXT
  , pattern VK_ACCESS_TRANSFORM_FEEDBACK_COUNTER_READ_BIT_EXT
  , pattern VK_ACCESS_TRANSFORM_FEEDBACK_COUNTER_WRITE_BIT_EXT
  , pattern VK_PIPELINE_STAGE_TRANSFORM_FEEDBACK_BIT_EXT
  , VkPhysicalDeviceTransformFeedbackFeaturesEXT (..)
  , VkPhysicalDeviceTransformFeedbackPropertiesEXT (..)
  , VkPipelineRasterizationStateStreamCreateInfoEXT (..)
  , VkPipelineRasterizationStateStreamCreateFlagsEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkAccessFlagBits
import Vulkan.Types.Enum.VkBufferUsageFlagBits
import Vulkan.Types.Enum.VkPipelineRasterizationStateStreamCreateFlagsEXT
import Vulkan.Types.Enum.VkPipelineStageFlagBits
import Vulkan.Types.Enum.VkQueryType
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceTransformFeedbackFeaturesEXT
import Vulkan.Types.Struct.VkPhysicalDeviceTransformFeedbackPropertiesEXT
import Vulkan.Types.Struct.VkPipelineRasterizationStateStreamCreateInfoEXT
import Vulkan.Types.Command.VkCmdBeginQueryIndexedEXT
import Vulkan.Types.Command.VkCmdBeginTransformFeedbackEXT
import Vulkan.Types.Command.VkCmdBindTransformFeedbackBuffersEXT
import Vulkan.Types.Command.VkCmdDrawIndirectByteCountEXT
import Vulkan.Types.Command.VkCmdEndQueryIndexedEXT
import Vulkan.Types.Command.VkCmdEndTransformFeedbackEXT
import Vulkan.Types.VkFun



pattern VK_EXT_TRANSFORM_FEEDBACK_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_TRANSFORM_FEEDBACK_SPEC_VERSION = 1

pattern VK_EXT_TRANSFORM_FEEDBACK_EXTENSION_NAME :: CString
pattern VK_EXT_TRANSFORM_FEEDBACK_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_TRANSFORM_FEEDBACK_EXTENSION_NAME = Ptr ("VK_EXT_transform_feedback\0"##)

#else

module Vulkan.Ext.VK_EXT_transform_feedback where

#endif
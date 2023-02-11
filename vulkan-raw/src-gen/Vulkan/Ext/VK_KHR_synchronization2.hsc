{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_synchronization2

module Vulkan.Ext.VK_KHR_synchronization2
  ( pattern VK_KHR_SYNCHRONIZATION_2_SPEC_VERSION
  , pattern VK_KHR_SYNCHRONIZATION_2_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_MEMORY_BARRIER_2_KHR
  , pattern VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER_2_KHR
  , pattern VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER_2_KHR
  , pattern VK_STRUCTURE_TYPE_DEPENDENCY_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_SUBMIT_INFO_2_KHR
  , pattern VK_STRUCTURE_TYPE_SEMAPHORE_SUBMIT_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_COMMAND_BUFFER_SUBMIT_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SYNCHRONIZATION_2_FEATURES_KHR
  , pattern VK_EVENT_CREATE_DEVICE_ONLY_BIT_KHR
  , pattern VK_IMAGE_LAYOUT_READ_ONLY_OPTIMAL_KHR
  , pattern VK_IMAGE_LAYOUT_ATTACHMENT_OPTIMAL_KHR
  , pattern VK_PIPELINE_STAGE_NONE_KHR
  , pattern VK_ACCESS_NONE_KHR
  , VkFlags64
  , VkPipelineStageFlags2KHR
  , VkPipelineStageFlagBits2KHR
  , VkAccessFlags2KHR
  , VkAccessFlagBits2KHR
  , VkMemoryBarrier2KHR
  , VkBufferMemoryBarrier2KHR
  , VkImageMemoryBarrier2KHR
  , VkDependencyInfoKHR
  , VkSubmitInfo2KHR
  , VkSemaphoreSubmitInfoKHR
  , VkCommandBufferSubmitInfoKHR
  , VkSubmitFlagBitsKHR
  , VkSubmitFlagsKHR
  , VkPhysicalDeviceSynchronization2FeaturesKHR
  , VkCmdSetEvent2KHR
  , vkFunCmdSetEvent2KHR
  , VkCmdResetEvent2KHR
  , vkFunCmdResetEvent2KHR
  , VkCmdWaitEvents2KHR
  , vkFunCmdWaitEvents2KHR
  , VkCmdPipelineBarrier2KHR
  , vkFunCmdPipelineBarrier2KHR
  , VkCmdWriteTimestamp2KHR
  , vkFunCmdWriteTimestamp2KHR
  , VkQueueSubmit2KHR
  , vkFunQueueSubmit2KHR
#if VK_EXT_transform_feedback
  , pattern VK_PIPELINE_STAGE_2_TRANSFORM_FEEDBACK_BIT_EXT
  , pattern VK_ACCESS_2_TRANSFORM_FEEDBACK_WRITE_BIT_EXT
  , pattern VK_ACCESS_2_TRANSFORM_FEEDBACK_COUNTER_READ_BIT_EXT
  , pattern VK_ACCESS_2_TRANSFORM_FEEDBACK_COUNTER_WRITE_BIT_EXT
#endif
#if VK_EXT_conditional_rendering
  , pattern VK_PIPELINE_STAGE_2_CONDITIONAL_RENDERING_BIT_EXT
  , pattern VK_ACCESS_2_CONDITIONAL_RENDERING_READ_BIT_EXT
#endif
#if VK_NV_device_generated_commands
  , pattern VK_PIPELINE_STAGE_2_COMMAND_PREPROCESS_BIT_NV
  , pattern VK_ACCESS_2_COMMAND_PREPROCESS_READ_BIT_NV
  , pattern VK_ACCESS_2_COMMAND_PREPROCESS_WRITE_BIT_NV
#endif
#if VK_KHR_fragment_shading_rate
  , pattern VK_PIPELINE_STAGE_2_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR
  , pattern VK_ACCESS_2_FRAGMENT_SHADING_RATE_ATTACHMENT_READ_BIT_KHR
#endif
#if VK_NV_shading_rate_image
  , pattern VK_PIPELINE_STAGE_2_SHADING_RATE_IMAGE_BIT_NV
  , pattern VK_ACCESS_2_SHADING_RATE_IMAGE_READ_BIT_NV
#endif
#if VK_KHR_acceleration_structure
  , pattern VK_PIPELINE_STAGE_2_ACCELERATION_STRUCTURE_BUILD_BIT_KHR
  , pattern VK_ACCESS_2_ACCELERATION_STRUCTURE_READ_BIT_KHR
  , pattern VK_ACCESS_2_ACCELERATION_STRUCTURE_WRITE_BIT_KHR
#endif
#if VK_KHR_ray_tracing_pipeline
  , pattern VK_PIPELINE_STAGE_2_RAY_TRACING_SHADER_BIT_KHR
#endif
#if VK_NV_ray_tracing
  , pattern VK_PIPELINE_STAGE_2_RAY_TRACING_SHADER_BIT_NV
  , pattern VK_PIPELINE_STAGE_2_ACCELERATION_STRUCTURE_BUILD_BIT_NV
  , pattern VK_ACCESS_2_ACCELERATION_STRUCTURE_READ_BIT_NV
  , pattern VK_ACCESS_2_ACCELERATION_STRUCTURE_WRITE_BIT_NV
#endif
#if VK_EXT_fragment_density_map
  , pattern VK_PIPELINE_STAGE_2_FRAGMENT_DENSITY_PROCESS_BIT_EXT
  , pattern VK_ACCESS_2_FRAGMENT_DENSITY_MAP_READ_BIT_EXT
#endif
#if VK_EXT_blend_operation_advanced
  , pattern VK_ACCESS_2_COLOR_ATTACHMENT_READ_NONCOHERENT_BIT_EXT
#endif
#if VK_NV_mesh_shader
  , pattern VK_PIPELINE_STAGE_2_TASK_SHADER_BIT_NV
  , pattern VK_PIPELINE_STAGE_2_MESH_SHADER_BIT_NV
#endif
#if VK_AMD_buffer_marker
  , VkCmdWriteBufferMarker2AMD
  , vkFunCmdWriteBufferMarker2AMD
#endif
#if VK_NV_device_diagnostic_checkpoints
  , VkQueueFamilyCheckpointProperties2NV (..)
  , VkCheckpointData2NV (..)
  , VkGetQueueCheckpointData2NV
  , vkFunGetQueueCheckpointData2NV
  , pattern VK_STRUCTURE_TYPE_QUEUE_FAMILY_CHECKPOINT_PROPERTIES_2_NV
  , pattern VK_STRUCTURE_TYPE_CHECKPOINT_DATA_2_NV
#endif
#if VK_EXT_mesh_shader
  , pattern VK_PIPELINE_STAGE_2_TASK_SHADER_BIT_EXT
  , pattern VK_PIPELINE_STAGE_2_MESH_SHADER_BIT_EXT
#endif
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkAccessFlagBits
import Vulkan.Types.Enum.VkAccessFlagBits2
import Vulkan.Types.Enum.VkAccessFlagBits2KHR
import Vulkan.Types.Enum.VkAccessFlags2KHR
import Vulkan.Types.Enum.VkEventCreateFlagBits
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkPipelineStageFlagBits
import Vulkan.Types.Enum.VkPipelineStageFlagBits2
import Vulkan.Types.Enum.VkPipelineStageFlagBits2KHR
import Vulkan.Types.Enum.VkPipelineStageFlags2KHR
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkSubmitFlagBitsKHR
import Vulkan.Types.Enum.VkSubmitFlagsKHR
import Vulkan.Types.Struct.VkBufferMemoryBarrier2KHR
import Vulkan.Types.Struct.VkCheckpointData2NV
import Vulkan.Types.Struct.VkCommandBufferSubmitInfoKHR
import Vulkan.Types.Struct.VkDependencyInfoKHR
import Vulkan.Types.Struct.VkImageMemoryBarrier2KHR
import Vulkan.Types.Struct.VkMemoryBarrier2KHR
import Vulkan.Types.Struct.VkPhysicalDeviceSynchronization2FeaturesKHR
import Vulkan.Types.Struct.VkQueueFamilyCheckpointProperties2NV
import Vulkan.Types.Struct.VkSemaphoreSubmitInfoKHR
import Vulkan.Types.Struct.VkSubmitInfo2KHR
import Vulkan.Types.Command.VkCmdPipelineBarrier2KHR
import Vulkan.Types.Command.VkCmdResetEvent2KHR
import Vulkan.Types.Command.VkCmdSetEvent2KHR
import Vulkan.Types.Command.VkCmdWaitEvents2KHR
import Vulkan.Types.Command.VkCmdWriteBufferMarker2AMD
import Vulkan.Types.Command.VkCmdWriteTimestamp2KHR
import Vulkan.Types.Command.VkGetQueueCheckpointData2NV
import Vulkan.Types.Command.VkQueueSubmit2KHR
import Vulkan.Types.VkFun



pattern VK_KHR_SYNCHRONIZATION_2_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_SYNCHRONIZATION_2_SPEC_VERSION = 1

pattern VK_KHR_SYNCHRONIZATION_2_EXTENSION_NAME :: CString
pattern VK_KHR_SYNCHRONIZATION_2_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_SYNCHRONIZATION_2_EXTENSION_NAME = Ptr ("VK_KHR_synchronization2\0"##)

#else

module Vulkan.Ext.VK_KHR_synchronization2 where

#endif
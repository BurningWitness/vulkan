{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_ray_tracing_pipeline

module Vulkan.Ext.VK_KHR_ray_tracing_pipeline
  ( pattern VK_KHR_RAY_TRACING_PIPELINE_SPEC_VERSION
  , pattern VK_KHR_RAY_TRACING_PIPELINE_EXTENSION_NAME
  , pattern VK_SHADER_UNUSED_KHR
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_PIPELINE_FEATURES_KHR
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_PIPELINE_PROPERTIES_KHR
  , pattern VK_STRUCTURE_TYPE_RAY_TRACING_PIPELINE_CREATE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_RAY_TRACING_SHADER_GROUP_CREATE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_RAY_TRACING_PIPELINE_INTERFACE_CREATE_INFO_KHR
  , pattern VK_SHADER_STAGE_RAYGEN_BIT_KHR
  , pattern VK_SHADER_STAGE_ANY_HIT_BIT_KHR
  , pattern VK_SHADER_STAGE_CLOSEST_HIT_BIT_KHR
  , pattern VK_SHADER_STAGE_MISS_BIT_KHR
  , pattern VK_SHADER_STAGE_INTERSECTION_BIT_KHR
  , pattern VK_SHADER_STAGE_CALLABLE_BIT_KHR
  , pattern VK_PIPELINE_STAGE_RAY_TRACING_SHADER_BIT_KHR
  , pattern VK_BUFFER_USAGE_SHADER_BINDING_TABLE_BIT_KHR
  , pattern VK_PIPELINE_BIND_POINT_RAY_TRACING_KHR
  , pattern VK_PIPELINE_CREATE_RAY_TRACING_NO_NULL_ANY_HIT_SHADERS_BIT_KHR
  , pattern VK_PIPELINE_CREATE_RAY_TRACING_NO_NULL_CLOSEST_HIT_SHADERS_BIT_KHR
  , pattern VK_PIPELINE_CREATE_RAY_TRACING_NO_NULL_MISS_SHADERS_BIT_KHR
  , pattern VK_PIPELINE_CREATE_RAY_TRACING_NO_NULL_INTERSECTION_SHADERS_BIT_KHR
  , pattern VK_PIPELINE_CREATE_RAY_TRACING_SKIP_TRIANGLES_BIT_KHR
  , pattern VK_PIPELINE_CREATE_RAY_TRACING_SKIP_AABBS_BIT_KHR
  , pattern VK_PIPELINE_CREATE_RAY_TRACING_SHADER_GROUP_HANDLE_CAPTURE_REPLAY_BIT_KHR
  , pattern VK_DYNAMIC_STATE_RAY_TRACING_PIPELINE_STACK_SIZE_KHR
  , VkRayTracingShaderGroupCreateInfoKHR (..)
  , VkRayTracingShaderGroupTypeKHR
  , pattern VK_RAY_TRACING_SHADER_GROUP_TYPE_GENERAL_KHR
  , pattern VK_RAY_TRACING_SHADER_GROUP_TYPE_TRIANGLES_HIT_GROUP_KHR
  , pattern VK_RAY_TRACING_SHADER_GROUP_TYPE_PROCEDURAL_HIT_GROUP_KHR
  , VkRayTracingPipelineCreateInfoKHR (..)
  , VkPhysicalDeviceRayTracingPipelineFeaturesKHR (..)
  , VkPhysicalDeviceRayTracingPipelinePropertiesKHR (..)
  , VkStridedDeviceAddressRegionKHR (..)
  , VkTraceRaysIndirectCommandKHR (..)
  , VkRayTracingPipelineInterfaceCreateInfoKHR (..)
  , VkShaderGroupShaderKHR
  , pattern VK_SHADER_GROUP_SHADER_GENERAL_KHR
  , pattern VK_SHADER_GROUP_SHADER_CLOSEST_HIT_KHR
  , pattern VK_SHADER_GROUP_SHADER_ANY_HIT_KHR
  , pattern VK_SHADER_GROUP_SHADER_INTERSECTION_KHR
  , VkCmdTraceRaysKHR
  , vkFunCmdTraceRaysKHR
  , VkCreateRayTracingPipelinesKHR
  , vkFunCreateRayTracingPipelinesKHR
  , VkGetRayTracingShaderGroupHandlesKHR
  , vkFunGetRayTracingShaderGroupHandlesKHR
  , VkGetRayTracingCaptureReplayShaderGroupHandlesKHR
  , vkFunGetRayTracingCaptureReplayShaderGroupHandlesKHR
  , VkCmdTraceRaysIndirectKHR
  , vkFunCmdTraceRaysIndirectKHR
  , VkGetRayTracingShaderGroupStackSizeKHR
  , vkFunGetRayTracingShaderGroupStackSizeKHR
  , VkCmdSetRayTracingPipelineStackSizeKHR
  , vkFunCmdSetRayTracingPipelineStackSizeKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Constant
import Vulkan.Types.Enum.VkBufferUsageFlagBits
import Vulkan.Types.Enum.VkDynamicState
import Vulkan.Types.Enum.VkPipelineBindPoint
import Vulkan.Types.Enum.VkPipelineCreateFlagBits
import Vulkan.Types.Enum.VkPipelineStageFlagBits
import Vulkan.Types.Enum.VkRayTracingShaderGroupTypeKHR
import Vulkan.Types.Enum.VkShaderGroupShaderKHR
import Vulkan.Types.Enum.VkShaderStageFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceRayTracingPipelineFeaturesKHR
import Vulkan.Types.Struct.VkPhysicalDeviceRayTracingPipelinePropertiesKHR
import Vulkan.Types.Struct.VkRayTracingPipelineCreateInfoKHR
import Vulkan.Types.Struct.VkRayTracingPipelineInterfaceCreateInfoKHR
import Vulkan.Types.Struct.VkRayTracingShaderGroupCreateInfoKHR
import Vulkan.Types.Struct.VkStridedDeviceAddressRegionKHR
import Vulkan.Types.Struct.VkTraceRaysIndirectCommandKHR
import Vulkan.Types.Command.VkCmdSetRayTracingPipelineStackSizeKHR
import Vulkan.Types.Command.VkCmdTraceRaysIndirectKHR
import Vulkan.Types.Command.VkCmdTraceRaysKHR
import Vulkan.Types.Command.VkCreateRayTracingPipelinesKHR
import Vulkan.Types.Command.VkGetRayTracingCaptureReplayShaderGroupHandlesKHR
import Vulkan.Types.Command.VkGetRayTracingShaderGroupHandlesKHR
import Vulkan.Types.Command.VkGetRayTracingShaderGroupStackSizeKHR
import Vulkan.Types.VkFun



pattern VK_KHR_RAY_TRACING_PIPELINE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_RAY_TRACING_PIPELINE_SPEC_VERSION = 1

pattern VK_KHR_RAY_TRACING_PIPELINE_EXTENSION_NAME :: CString
pattern VK_KHR_RAY_TRACING_PIPELINE_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_RAY_TRACING_PIPELINE_EXTENSION_NAME = Ptr ("VK_KHR_ray_tracing_pipeline\0"##)

#else

module Vulkan.Ext.VK_KHR_ray_tracing_pipeline where

#endif
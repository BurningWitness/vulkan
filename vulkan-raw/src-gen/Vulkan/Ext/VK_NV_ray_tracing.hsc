{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing

module Vulkan.Ext.VK_NV_ray_tracing
  ( pattern VK_NV_RAY_TRACING_SPEC_VERSION
  , pattern VK_NV_RAY_TRACING_EXTENSION_NAME
  , pattern VK_SHADER_UNUSED_NV
  , pattern VK_STRUCTURE_TYPE_RAY_TRACING_PIPELINE_CREATE_INFO_NV
  , pattern VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_CREATE_INFO_NV
  , pattern VK_STRUCTURE_TYPE_GEOMETRY_NV
  , pattern VK_STRUCTURE_TYPE_GEOMETRY_TRIANGLES_NV
  , pattern VK_STRUCTURE_TYPE_GEOMETRY_AABB_NV
  , pattern VK_STRUCTURE_TYPE_BIND_ACCELERATION_STRUCTURE_MEMORY_INFO_NV
  , pattern VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET_ACCELERATION_STRUCTURE_NV
  , pattern VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_INFO_NV
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_PROPERTIES_NV
  , pattern VK_STRUCTURE_TYPE_RAY_TRACING_SHADER_GROUP_CREATE_INFO_NV
  , pattern VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_INFO_NV
  , pattern VK_SHADER_STAGE_RAYGEN_BIT_NV
  , pattern VK_SHADER_STAGE_ANY_HIT_BIT_NV
  , pattern VK_SHADER_STAGE_CLOSEST_HIT_BIT_NV
  , pattern VK_SHADER_STAGE_MISS_BIT_NV
  , pattern VK_SHADER_STAGE_INTERSECTION_BIT_NV
  , pattern VK_SHADER_STAGE_CALLABLE_BIT_NV
  , pattern VK_PIPELINE_STAGE_RAY_TRACING_SHADER_BIT_NV
  , pattern VK_PIPELINE_STAGE_ACCELERATION_STRUCTURE_BUILD_BIT_NV
  , pattern VK_BUFFER_USAGE_RAY_TRACING_BIT_NV
  , pattern VK_PIPELINE_BIND_POINT_RAY_TRACING_NV
  , pattern VK_DESCRIPTOR_TYPE_ACCELERATION_STRUCTURE_NV
  , pattern VK_ACCESS_ACCELERATION_STRUCTURE_READ_BIT_NV
  , pattern VK_ACCESS_ACCELERATION_STRUCTURE_WRITE_BIT_NV
  , pattern VK_QUERY_TYPE_ACCELERATION_STRUCTURE_COMPACTED_SIZE_NV
  , pattern VK_PIPELINE_CREATE_DEFER_COMPILE_BIT_NV
  , pattern VK_OBJECT_TYPE_ACCELERATION_STRUCTURE_NV
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_ACCELERATION_STRUCTURE_NV_EXT
  , pattern VK_INDEX_TYPE_NONE_NV
  , VkRayTracingShaderGroupCreateInfoNV (..)
  , VkRayTracingShaderGroupTypeNV
  , pattern VK_RAY_TRACING_SHADER_GROUP_TYPE_GENERAL_NV
  , pattern VK_RAY_TRACING_SHADER_GROUP_TYPE_TRIANGLES_HIT_GROUP_NV
  , pattern VK_RAY_TRACING_SHADER_GROUP_TYPE_PROCEDURAL_HIT_GROUP_NV
  , VkRayTracingPipelineCreateInfoNV (..)
  , VkGeometryTypeNV
  , pattern VK_GEOMETRY_TYPE_TRIANGLES_NV
  , pattern VK_GEOMETRY_TYPE_AABBS_NV
  , VkAccelerationStructureTypeNV
  , pattern VK_ACCELERATION_STRUCTURE_TYPE_TOP_LEVEL_NV
  , pattern VK_ACCELERATION_STRUCTURE_TYPE_BOTTOM_LEVEL_NV
  , VkGeometryTrianglesNV (..)
  , VkGeometryAABBNV (..)
  , VkGeometryDataNV (..)
  , VkGeometryNV (..)
  , VkGeometryFlagsNV
  , VkGeometryFlagBitsNV
  , pattern VK_GEOMETRY_OPAQUE_BIT_NV
  , pattern VK_GEOMETRY_NO_DUPLICATE_ANY_HIT_INVOCATION_BIT_NV
  , VkGeometryInstanceFlagsNV
  , VkGeometryInstanceFlagBitsNV
  , pattern VK_GEOMETRY_INSTANCE_TRIANGLE_CULL_DISABLE_BIT_NV
  , pattern VK_GEOMETRY_INSTANCE_TRIANGLE_FRONT_COUNTERCLOCKWISE_BIT_NV
  , pattern VK_GEOMETRY_INSTANCE_FORCE_OPAQUE_BIT_NV
  , pattern VK_GEOMETRY_INSTANCE_FORCE_NO_OPAQUE_BIT_NV
  , VkAccelerationStructureInfoNV (..)
  , VkAccelerationStructureCreateInfoNV (..)
  , VkAccelerationStructureNV_T
  , VkAccelerationStructureNV
  , VkBuildAccelerationStructureFlagBitsNV
  , pattern VK_BUILD_ACCELERATION_STRUCTURE_ALLOW_UPDATE_BIT_NV
  , pattern VK_BUILD_ACCELERATION_STRUCTURE_ALLOW_COMPACTION_BIT_NV
  , pattern VK_BUILD_ACCELERATION_STRUCTURE_PREFER_FAST_TRACE_BIT_NV
  , pattern VK_BUILD_ACCELERATION_STRUCTURE_PREFER_FAST_BUILD_BIT_NV
  , pattern VK_BUILD_ACCELERATION_STRUCTURE_LOW_MEMORY_BIT_NV
  , VkBuildAccelerationStructureFlagsNV
  , VkCopyAccelerationStructureModeNV
  , pattern VK_COPY_ACCELERATION_STRUCTURE_MODE_CLONE_NV
  , pattern VK_COPY_ACCELERATION_STRUCTURE_MODE_COMPACT_NV
  , VkBindAccelerationStructureMemoryInfoNV (..)
  , VkWriteDescriptorSetAccelerationStructureNV (..)
  , VkAccelerationStructureMemoryRequirementsInfoNV (..)
  , VkPhysicalDeviceRayTracingPropertiesNV (..)
  , VkMemoryRequirements2KHR
  , VkAccelerationStructureMemoryRequirementsTypeNV
  , pattern VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_OBJECT_NV
  , pattern VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_BUILD_SCRATCH_NV
  , pattern VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_UPDATE_SCRATCH_NV
  , VkTransformMatrixNV
  , VkAabbPositionsNV
  , VkAccelerationStructureInstanceNV
  , VkCreateAccelerationStructureNV
  , vkFunCreateAccelerationStructureNV
  , VkDestroyAccelerationStructureNV
  , vkFunDestroyAccelerationStructureNV
  , VkGetAccelerationStructureMemoryRequirementsNV
  , vkFunGetAccelerationStructureMemoryRequirementsNV
  , VkBindAccelerationStructureMemoryNV
  , vkFunBindAccelerationStructureMemoryNV
  , VkCmdBuildAccelerationStructureNV
  , vkFunCmdBuildAccelerationStructureNV
  , VkCmdCopyAccelerationStructureNV
  , vkFunCmdCopyAccelerationStructureNV
  , VkCmdTraceRaysNV
  , vkFunCmdTraceRaysNV
  , VkCreateRayTracingPipelinesNV
  , vkFunCreateRayTracingPipelinesNV
  , VkGetRayTracingShaderGroupHandlesNV
  , vkFunGetRayTracingShaderGroupHandlesNV
  , VkGetAccelerationStructureHandleNV
  , vkFunGetAccelerationStructureHandleNV
  , VkCmdWriteAccelerationStructuresPropertiesNV
  , vkFunCmdWriteAccelerationStructuresPropertiesNV
  , VkCompileDeferredNV
  , vkFunCompileDeferredNV
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Constant
import Vulkan.Types.Enum.VkAccelerationStructureMemoryRequirementsTypeNV
import Vulkan.Types.Enum.VkAccelerationStructureTypeKHR
import Vulkan.Types.Enum.VkAccelerationStructureTypeNV
import Vulkan.Types.Enum.VkAccessFlagBits
import Vulkan.Types.Enum.VkBufferUsageFlagBits
import Vulkan.Types.Enum.VkBuildAccelerationStructureFlagBitsKHR
import Vulkan.Types.Enum.VkBuildAccelerationStructureFlagBitsNV
import Vulkan.Types.Enum.VkBuildAccelerationStructureFlagsNV
import Vulkan.Types.Enum.VkCopyAccelerationStructureModeKHR
import Vulkan.Types.Enum.VkCopyAccelerationStructureModeNV
import Vulkan.Types.Enum.VkDebugReportObjectTypeEXT
import Vulkan.Types.Enum.VkDescriptorType
import Vulkan.Types.Enum.VkGeometryFlagBitsKHR
import Vulkan.Types.Enum.VkGeometryFlagBitsNV
import Vulkan.Types.Enum.VkGeometryFlagsNV
import Vulkan.Types.Enum.VkGeometryInstanceFlagBitsKHR
import Vulkan.Types.Enum.VkGeometryInstanceFlagBitsNV
import Vulkan.Types.Enum.VkGeometryInstanceFlagsNV
import Vulkan.Types.Enum.VkGeometryTypeKHR
import Vulkan.Types.Enum.VkGeometryTypeNV
import Vulkan.Types.Enum.VkIndexType
import Vulkan.Types.Enum.VkObjectType
import Vulkan.Types.Enum.VkPipelineBindPoint
import Vulkan.Types.Enum.VkPipelineCreateFlagBits
import Vulkan.Types.Enum.VkPipelineStageFlagBits
import Vulkan.Types.Enum.VkQueryType
import Vulkan.Types.Enum.VkRayTracingShaderGroupTypeKHR
import Vulkan.Types.Enum.VkRayTracingShaderGroupTypeNV
import Vulkan.Types.Enum.VkShaderStageFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAabbPositionsNV
import Vulkan.Types.Struct.VkAccelerationStructureCreateInfoNV
import Vulkan.Types.Struct.VkAccelerationStructureInfoNV
import Vulkan.Types.Struct.VkAccelerationStructureInstanceNV
import Vulkan.Types.Struct.VkAccelerationStructureMemoryRequirementsInfoNV
import Vulkan.Types.Struct.VkBindAccelerationStructureMemoryInfoNV
import Vulkan.Types.Struct.VkGeometryAABBNV
import Vulkan.Types.Struct.VkGeometryDataNV
import Vulkan.Types.Struct.VkGeometryNV
import Vulkan.Types.Struct.VkGeometryTrianglesNV
import Vulkan.Types.Struct.VkMemoryRequirements2KHR
import Vulkan.Types.Struct.VkPhysicalDeviceRayTracingPropertiesNV
import Vulkan.Types.Struct.VkRayTracingPipelineCreateInfoNV
import Vulkan.Types.Struct.VkRayTracingShaderGroupCreateInfoNV
import Vulkan.Types.Struct.VkTransformMatrixNV
import Vulkan.Types.Struct.VkWriteDescriptorSetAccelerationStructureNV
import Vulkan.Types.Command.VkBindAccelerationStructureMemoryNV
import Vulkan.Types.Command.VkCmdBuildAccelerationStructureNV
import Vulkan.Types.Command.VkCmdCopyAccelerationStructureNV
import Vulkan.Types.Command.VkCmdTraceRaysNV
import Vulkan.Types.Command.VkCmdWriteAccelerationStructuresPropertiesNV
import Vulkan.Types.Command.VkCompileDeferredNV
import Vulkan.Types.Command.VkCreateAccelerationStructureNV
import Vulkan.Types.Command.VkCreateRayTracingPipelinesNV
import Vulkan.Types.Command.VkDestroyAccelerationStructureNV
import Vulkan.Types.Command.VkGetAccelerationStructureHandleNV
import Vulkan.Types.Command.VkGetAccelerationStructureMemoryRequirementsNV
import Vulkan.Types.Command.VkGetRayTracingShaderGroupHandlesNV
import Vulkan.Types.VkFun



pattern VK_NV_RAY_TRACING_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_RAY_TRACING_SPEC_VERSION = 3

pattern VK_NV_RAY_TRACING_EXTENSION_NAME :: CString
pattern VK_NV_RAY_TRACING_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_RAY_TRACING_EXTENSION_NAME = Ptr ("VK_NV_ray_tracing\0"##)

#else

module Vulkan.Ext.VK_NV_ray_tracing where

#endif
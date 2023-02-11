{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_acceleration_structure

module Vulkan.Ext.VK_KHR_acceleration_structure
  ( pattern VK_KHR_ACCELERATION_STRUCTURE_SPEC_VERSION
  , pattern VK_KHR_ACCELERATION_STRUCTURE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET_ACCELERATION_STRUCTURE_KHR
  , pattern VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_BUILD_GEOMETRY_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_DEVICE_ADDRESS_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_AABBS_DATA_KHR
  , pattern VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_INSTANCES_DATA_KHR
  , pattern VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_TRIANGLES_DATA_KHR
  , pattern VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_KHR
  , pattern VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_VERSION_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_COPY_ACCELERATION_STRUCTURE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_COPY_ACCELERATION_STRUCTURE_TO_MEMORY_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_COPY_MEMORY_TO_ACCELERATION_STRUCTURE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ACCELERATION_STRUCTURE_FEATURES_KHR
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ACCELERATION_STRUCTURE_PROPERTIES_KHR
  , pattern VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_CREATE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_BUILD_SIZES_INFO_KHR
  , pattern VK_PIPELINE_STAGE_ACCELERATION_STRUCTURE_BUILD_BIT_KHR
  , pattern VK_DESCRIPTOR_TYPE_ACCELERATION_STRUCTURE_KHR
  , pattern VK_ACCESS_ACCELERATION_STRUCTURE_READ_BIT_KHR
  , pattern VK_ACCESS_ACCELERATION_STRUCTURE_WRITE_BIT_KHR
  , pattern VK_QUERY_TYPE_ACCELERATION_STRUCTURE_COMPACTED_SIZE_KHR
  , pattern VK_QUERY_TYPE_ACCELERATION_STRUCTURE_SERIALIZATION_SIZE_KHR
  , pattern VK_OBJECT_TYPE_ACCELERATION_STRUCTURE_KHR
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_ACCELERATION_STRUCTURE_KHR_EXT
  , pattern VK_INDEX_TYPE_NONE_KHR
  , pattern VK_FORMAT_FEATURE_ACCELERATION_STRUCTURE_VERTEX_BUFFER_BIT_KHR
  , pattern VK_BUFFER_USAGE_ACCELERATION_STRUCTURE_BUILD_INPUT_READ_ONLY_BIT_KHR
  , pattern VK_BUFFER_USAGE_ACCELERATION_STRUCTURE_STORAGE_BIT_KHR
  , VkAccelerationStructureTypeKHR
  , pattern VK_ACCELERATION_STRUCTURE_TYPE_TOP_LEVEL_KHR
  , pattern VK_ACCELERATION_STRUCTURE_TYPE_BOTTOM_LEVEL_KHR
  , pattern VK_ACCELERATION_STRUCTURE_TYPE_GENERIC_KHR
  , VkDeviceOrHostAddressKHR (..)
  , VkDeviceOrHostAddressConstKHR (..)
  , VkAccelerationStructureBuildRangeInfoKHR (..)
  , VkAabbPositionsKHR (..)
  , VkAccelerationStructureGeometryTrianglesDataKHR (..)
  , VkTransformMatrixKHR (..)
  , VkAccelerationStructureBuildGeometryInfoKHR (..)
  , VkAccelerationStructureBuildTypeKHR
  , pattern VK_ACCELERATION_STRUCTURE_BUILD_TYPE_HOST_KHR
  , pattern VK_ACCELERATION_STRUCTURE_BUILD_TYPE_DEVICE_KHR
  , pattern VK_ACCELERATION_STRUCTURE_BUILD_TYPE_HOST_OR_DEVICE_KHR
  , VkAccelerationStructureGeometryAabbsDataKHR (..)
  , VkAccelerationStructureInstanceKHR (..)
  , VkAccelerationStructureGeometryInstancesDataKHR (..)
  , VkAccelerationStructureGeometryDataKHR (..)
  , VkAccelerationStructureGeometryKHR (..)
  , VkGeometryFlagsKHR
  , VkGeometryInstanceFlagsKHR
  , VkGeometryFlagBitsKHR
  , pattern VK_GEOMETRY_OPAQUE_BIT_KHR
  , pattern VK_GEOMETRY_NO_DUPLICATE_ANY_HIT_INVOCATION_BIT_KHR
  , VkGeometryInstanceFlagBitsKHR
  , pattern VK_GEOMETRY_INSTANCE_TRIANGLE_FACING_CULL_DISABLE_BIT_KHR
  , pattern VK_GEOMETRY_INSTANCE_TRIANGLE_FLIP_FACING_BIT_KHR
  , pattern VK_GEOMETRY_INSTANCE_FORCE_OPAQUE_BIT_KHR
  , pattern VK_GEOMETRY_INSTANCE_FORCE_NO_OPAQUE_BIT_KHR
  , pattern VK_GEOMETRY_INSTANCE_TRIANGLE_FRONT_COUNTERCLOCKWISE_BIT_KHR
  , VkAccelerationStructureCreateInfoKHR (..)
  , VkAccelerationStructureKHR_T
  , VkAccelerationStructureKHR
  , VkBuildAccelerationStructureFlagBitsKHR
  , pattern VK_BUILD_ACCELERATION_STRUCTURE_ALLOW_UPDATE_BIT_KHR
  , pattern VK_BUILD_ACCELERATION_STRUCTURE_ALLOW_COMPACTION_BIT_KHR
  , pattern VK_BUILD_ACCELERATION_STRUCTURE_PREFER_FAST_TRACE_BIT_KHR
  , pattern VK_BUILD_ACCELERATION_STRUCTURE_PREFER_FAST_BUILD_BIT_KHR
  , pattern VK_BUILD_ACCELERATION_STRUCTURE_LOW_MEMORY_BIT_KHR
  , VkBuildAccelerationStructureFlagsKHR
  , VkCopyAccelerationStructureModeKHR
  , pattern VK_COPY_ACCELERATION_STRUCTURE_MODE_CLONE_KHR
  , pattern VK_COPY_ACCELERATION_STRUCTURE_MODE_COMPACT_KHR
  , pattern VK_COPY_ACCELERATION_STRUCTURE_MODE_SERIALIZE_KHR
  , pattern VK_COPY_ACCELERATION_STRUCTURE_MODE_DESERIALIZE_KHR
  , VkGeometryTypeKHR
  , pattern VK_GEOMETRY_TYPE_TRIANGLES_KHR
  , pattern VK_GEOMETRY_TYPE_AABBS_KHR
  , pattern VK_GEOMETRY_TYPE_INSTANCES_KHR
  , VkWriteDescriptorSetAccelerationStructureKHR (..)
  , VkPhysicalDeviceAccelerationStructureFeaturesKHR (..)
  , VkPhysicalDeviceAccelerationStructurePropertiesKHR (..)
  , VkAccelerationStructureDeviceAddressInfoKHR (..)
  , VkAccelerationStructureVersionInfoKHR (..)
  , VkCopyAccelerationStructureToMemoryInfoKHR (..)
  , VkCopyMemoryToAccelerationStructureInfoKHR (..)
  , VkCopyAccelerationStructureInfoKHR (..)
  , VkAccelerationStructureCompatibilityKHR
  , pattern VK_ACCELERATION_STRUCTURE_COMPATIBILITY_COMPATIBLE_KHR
  , pattern VK_ACCELERATION_STRUCTURE_COMPATIBILITY_INCOMPATIBLE_KHR
  , VkAccelerationStructureCreateFlagBitsKHR
  , pattern VK_ACCELERATION_STRUCTURE_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_KHR
  , VkAccelerationStructureCreateFlagsKHR
  , VkBuildAccelerationStructureModeKHR
  , pattern VK_BUILD_ACCELERATION_STRUCTURE_MODE_BUILD_KHR
  , pattern VK_BUILD_ACCELERATION_STRUCTURE_MODE_UPDATE_KHR
  , VkAccelerationStructureBuildSizesInfoKHR (..)
  , VkCreateAccelerationStructureKHR
  , vkFunCreateAccelerationStructureKHR
  , VkDestroyAccelerationStructureKHR
  , vkFunDestroyAccelerationStructureKHR
  , VkCmdBuildAccelerationStructuresKHR
  , vkFunCmdBuildAccelerationStructuresKHR
  , VkCmdBuildAccelerationStructuresIndirectKHR
  , vkFunCmdBuildAccelerationStructuresIndirectKHR
  , VkBuildAccelerationStructuresKHR
  , vkFunBuildAccelerationStructuresKHR
  , VkCopyAccelerationStructureKHR
  , vkFunCopyAccelerationStructureKHR
  , VkCopyAccelerationStructureToMemoryKHR
  , vkFunCopyAccelerationStructureToMemoryKHR
  , VkCopyMemoryToAccelerationStructureKHR
  , vkFunCopyMemoryToAccelerationStructureKHR
  , VkWriteAccelerationStructuresPropertiesKHR
  , vkFunWriteAccelerationStructuresPropertiesKHR
  , VkCmdCopyAccelerationStructureKHR
  , vkFunCmdCopyAccelerationStructureKHR
  , VkCmdCopyAccelerationStructureToMemoryKHR
  , vkFunCmdCopyAccelerationStructureToMemoryKHR
  , VkCmdCopyMemoryToAccelerationStructureKHR
  , vkFunCmdCopyMemoryToAccelerationStructureKHR
  , VkGetAccelerationStructureDeviceAddressKHR
  , vkFunGetAccelerationStructureDeviceAddressKHR
  , VkCmdWriteAccelerationStructuresPropertiesKHR
  , vkFunCmdWriteAccelerationStructuresPropertiesKHR
  , VkGetDeviceAccelerationStructureCompatibilityKHR
  , vkFunGetDeviceAccelerationStructureCompatibilityKHR
  , VkGetAccelerationStructureBuildSizesKHR
  , vkFunGetAccelerationStructureBuildSizesKHR
#if VK_KHR_format_feature_flags2
  , pattern VK_FORMAT_FEATURE_2_ACCELERATION_STRUCTURE_VERTEX_BUFFER_BIT_KHR
#endif
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkAccelerationStructureBuildTypeKHR
import Vulkan.Types.Enum.VkAccelerationStructureCompatibilityKHR
import Vulkan.Types.Enum.VkAccelerationStructureCreateFlagBitsKHR
import Vulkan.Types.Enum.VkAccelerationStructureCreateFlagsKHR
import Vulkan.Types.Enum.VkAccelerationStructureTypeKHR
import Vulkan.Types.Enum.VkAccessFlagBits
import Vulkan.Types.Enum.VkBufferUsageFlagBits
import Vulkan.Types.Enum.VkBuildAccelerationStructureFlagBitsKHR
import Vulkan.Types.Enum.VkBuildAccelerationStructureFlagsKHR
import Vulkan.Types.Enum.VkBuildAccelerationStructureModeKHR
import Vulkan.Types.Enum.VkCopyAccelerationStructureModeKHR
import Vulkan.Types.Enum.VkDebugReportObjectTypeEXT
import Vulkan.Types.Enum.VkDescriptorType
import Vulkan.Types.Enum.VkFormatFeatureFlagBits
import Vulkan.Types.Enum.VkFormatFeatureFlagBits2
import Vulkan.Types.Enum.VkGeometryFlagBitsKHR
import Vulkan.Types.Enum.VkGeometryFlagsKHR
import Vulkan.Types.Enum.VkGeometryInstanceFlagBitsKHR
import Vulkan.Types.Enum.VkGeometryInstanceFlagsKHR
import Vulkan.Types.Enum.VkGeometryTypeKHR
import Vulkan.Types.Enum.VkIndexType
import Vulkan.Types.Enum.VkObjectType
import Vulkan.Types.Enum.VkPipelineStageFlagBits
import Vulkan.Types.Enum.VkQueryType
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAabbPositionsKHR
import Vulkan.Types.Struct.VkAccelerationStructureBuildGeometryInfoKHR
import Vulkan.Types.Struct.VkAccelerationStructureBuildRangeInfoKHR
import Vulkan.Types.Struct.VkAccelerationStructureBuildSizesInfoKHR
import Vulkan.Types.Struct.VkAccelerationStructureCreateInfoKHR
import Vulkan.Types.Struct.VkAccelerationStructureDeviceAddressInfoKHR
import Vulkan.Types.Struct.VkAccelerationStructureGeometryAabbsDataKHR
import Vulkan.Types.Struct.VkAccelerationStructureGeometryInstancesDataKHR
import Vulkan.Types.Struct.VkAccelerationStructureGeometryKHR
import Vulkan.Types.Struct.VkAccelerationStructureGeometryTrianglesDataKHR
import Vulkan.Types.Struct.VkAccelerationStructureInstanceKHR
import Vulkan.Types.Struct.VkAccelerationStructureVersionInfoKHR
import Vulkan.Types.Struct.VkCopyAccelerationStructureInfoKHR
import Vulkan.Types.Struct.VkCopyAccelerationStructureToMemoryInfoKHR
import Vulkan.Types.Struct.VkCopyMemoryToAccelerationStructureInfoKHR
import Vulkan.Types.Struct.VkPhysicalDeviceAccelerationStructureFeaturesKHR
import Vulkan.Types.Struct.VkPhysicalDeviceAccelerationStructurePropertiesKHR
import Vulkan.Types.Struct.VkTransformMatrixKHR
import Vulkan.Types.Struct.VkWriteDescriptorSetAccelerationStructureKHR
import Vulkan.Types.Union.VkAccelerationStructureGeometryDataKHR
import Vulkan.Types.Union.VkDeviceOrHostAddressConstKHR
import Vulkan.Types.Union.VkDeviceOrHostAddressKHR
import Vulkan.Types.Command.VkBuildAccelerationStructuresKHR
import Vulkan.Types.Command.VkCmdBuildAccelerationStructuresIndirectKHR
import Vulkan.Types.Command.VkCmdBuildAccelerationStructuresKHR
import Vulkan.Types.Command.VkCmdCopyAccelerationStructureKHR
import Vulkan.Types.Command.VkCmdCopyAccelerationStructureToMemoryKHR
import Vulkan.Types.Command.VkCmdCopyMemoryToAccelerationStructureKHR
import Vulkan.Types.Command.VkCmdWriteAccelerationStructuresPropertiesKHR
import Vulkan.Types.Command.VkCopyAccelerationStructureKHR
import Vulkan.Types.Command.VkCopyAccelerationStructureToMemoryKHR
import Vulkan.Types.Command.VkCopyMemoryToAccelerationStructureKHR
import Vulkan.Types.Command.VkCreateAccelerationStructureKHR
import Vulkan.Types.Command.VkDestroyAccelerationStructureKHR
import Vulkan.Types.Command.VkGetAccelerationStructureBuildSizesKHR
import Vulkan.Types.Command.VkGetAccelerationStructureDeviceAddressKHR
import Vulkan.Types.Command.VkGetDeviceAccelerationStructureCompatibilityKHR
import Vulkan.Types.Command.VkWriteAccelerationStructuresPropertiesKHR
import Vulkan.Types.VkFun



pattern VK_KHR_ACCELERATION_STRUCTURE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_ACCELERATION_STRUCTURE_SPEC_VERSION = 13

pattern VK_KHR_ACCELERATION_STRUCTURE_EXTENSION_NAME :: CString
pattern VK_KHR_ACCELERATION_STRUCTURE_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_ACCELERATION_STRUCTURE_EXTENSION_NAME = Ptr ("VK_KHR_acceleration_structure\0"##)

#else

module Vulkan.Ext.VK_KHR_acceleration_structure where

#endif
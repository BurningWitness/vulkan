{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_opacity_micromap

module Vulkan.Ext.VK_EXT_opacity_micromap
  ( pattern VK_EXT_OPACITY_MICROMAP_SPEC_VERSION
  , pattern VK_EXT_OPACITY_MICROMAP_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_MICROMAP_BUILD_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_MICROMAP_VERSION_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_COPY_MICROMAP_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_COPY_MICROMAP_TO_MEMORY_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_COPY_MEMORY_TO_MICROMAP_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_OPACITY_MICROMAP_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_OPACITY_MICROMAP_PROPERTIES_EXT
  , pattern VK_STRUCTURE_TYPE_MICROMAP_CREATE_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_MICROMAP_BUILD_SIZES_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_TRIANGLES_OPACITY_MICROMAP_EXT
  , pattern VK_PIPELINE_STAGE_2_MICROMAP_BUILD_BIT_EXT
  , pattern VK_ACCESS_2_MICROMAP_READ_BIT_EXT
  , pattern VK_ACCESS_2_MICROMAP_WRITE_BIT_EXT
  , pattern VK_QUERY_TYPE_MICROMAP_SERIALIZATION_SIZE_EXT
  , pattern VK_QUERY_TYPE_MICROMAP_COMPACTED_SIZE_EXT
  , pattern VK_OBJECT_TYPE_MICROMAP_EXT
  , pattern VK_BUFFER_USAGE_MICROMAP_BUILD_INPUT_READ_ONLY_BIT_EXT
  , pattern VK_BUFFER_USAGE_MICROMAP_STORAGE_BIT_EXT
  , pattern VK_PIPELINE_CREATE_RAY_TRACING_OPACITY_MICROMAP_BIT_EXT
  , pattern VK_GEOMETRY_INSTANCE_FORCE_OPACITY_MICROMAP_2_STATE_EXT
  , pattern VK_GEOMETRY_INSTANCE_DISABLE_OPACITY_MICROMAPS_EXT
  , pattern VK_BUILD_ACCELERATION_STRUCTURE_ALLOW_OPACITY_MICROMAP_UPDATE_EXT
  , pattern VK_BUILD_ACCELERATION_STRUCTURE_ALLOW_DISABLE_OPACITY_MICROMAPS_EXT
  , pattern VK_BUILD_ACCELERATION_STRUCTURE_ALLOW_OPACITY_MICROMAP_DATA_UPDATE_EXT
  , VkMicromapTypeEXT
  , pattern VK_MICROMAP_TYPE_OPACITY_MICROMAP_EXT
  , VkMicromapBuildInfoEXT (..)
  , VkMicromapUsageEXT (..)
  , VkMicromapCreateInfoEXT (..)
  , VkMicromapEXT_T
  , VkMicromapEXT
  , VkBuildMicromapFlagBitsEXT
  , pattern VK_BUILD_MICROMAP_PREFER_FAST_TRACE_BIT_EXT
  , pattern VK_BUILD_MICROMAP_PREFER_FAST_BUILD_BIT_EXT
  , pattern VK_BUILD_MICROMAP_ALLOW_COMPACTION_BIT_EXT
  , VkBuildMicromapFlagsEXT
  , VkCopyMicromapModeEXT
  , pattern VK_COPY_MICROMAP_MODE_CLONE_EXT
  , pattern VK_COPY_MICROMAP_MODE_SERIALIZE_EXT
  , pattern VK_COPY_MICROMAP_MODE_DESERIALIZE_EXT
  , pattern VK_COPY_MICROMAP_MODE_COMPACT_EXT
  , VkPhysicalDeviceOpacityMicromapFeaturesEXT (..)
  , VkPhysicalDeviceOpacityMicromapPropertiesEXT (..)
  , VkMicromapVersionInfoEXT (..)
  , VkCopyMicromapToMemoryInfoEXT (..)
  , VkCopyMemoryToMicromapInfoEXT (..)
  , VkCopyMicromapInfoEXT (..)
  , VkMicromapCreateFlagBitsEXT
  , pattern VK_MICROMAP_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_EXT
  , VkMicromapCreateFlagsEXT
  , VkBuildMicromapModeEXT
  , pattern VK_BUILD_MICROMAP_MODE_BUILD_EXT
  , VkMicromapBuildSizesInfoEXT (..)
  , VkOpacityMicromapFormatEXT
  , pattern VK_OPACITY_MICROMAP_FORMAT_2_STATE_EXT
  , pattern VK_OPACITY_MICROMAP_FORMAT_4_STATE_EXT
  , VkAccelerationStructureTrianglesOpacityMicromapEXT (..)
  , VkMicromapTriangleEXT (..)
  , VkOpacityMicromapSpecialIndexEXT
  , pattern VK_OPACITY_MICROMAP_SPECIAL_INDEX_FULLY_TRANSPARENT_EXT
  , pattern VK_OPACITY_MICROMAP_SPECIAL_INDEX_FULLY_OPAQUE_EXT
  , pattern VK_OPACITY_MICROMAP_SPECIAL_INDEX_FULLY_UNKNOWN_TRANSPARENT_EXT
  , pattern VK_OPACITY_MICROMAP_SPECIAL_INDEX_FULLY_UNKNOWN_OPAQUE_EXT
  , VkCreateMicromapEXT
  , vkFunCreateMicromapEXT
  , VkDestroyMicromapEXT
  , vkFunDestroyMicromapEXT
  , VkCmdBuildMicromapsEXT
  , vkFunCmdBuildMicromapsEXT
  , VkBuildMicromapsEXT
  , vkFunBuildMicromapsEXT
  , VkCopyMicromapEXT
  , vkFunCopyMicromapEXT
  , VkCopyMicromapToMemoryEXT
  , vkFunCopyMicromapToMemoryEXT
  , VkCopyMemoryToMicromapEXT
  , vkFunCopyMemoryToMicromapEXT
  , VkWriteMicromapsPropertiesEXT
  , vkFunWriteMicromapsPropertiesEXT
  , VkCmdCopyMicromapEXT
  , vkFunCmdCopyMicromapEXT
  , VkCmdCopyMicromapToMemoryEXT
  , vkFunCmdCopyMicromapToMemoryEXT
  , VkCmdCopyMemoryToMicromapEXT
  , vkFunCmdCopyMemoryToMicromapEXT
  , VkCmdWriteMicromapsPropertiesEXT
  , vkFunCmdWriteMicromapsPropertiesEXT
  , VkGetDeviceMicromapCompatibilityEXT
  , vkFunGetDeviceMicromapCompatibilityEXT
  , VkGetMicromapBuildSizesEXT
  , vkFunGetMicromapBuildSizesEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkAccessFlagBits2
import Vulkan.Types.Enum.VkBufferUsageFlagBits
import Vulkan.Types.Enum.VkBuildAccelerationStructureFlagBitsKHR
import Vulkan.Types.Enum.VkBuildMicromapFlagBitsEXT
import Vulkan.Types.Enum.VkBuildMicromapFlagsEXT
import Vulkan.Types.Enum.VkBuildMicromapModeEXT
import Vulkan.Types.Enum.VkCopyMicromapModeEXT
import Vulkan.Types.Enum.VkGeometryInstanceFlagBitsKHR
import Vulkan.Types.Enum.VkMicromapCreateFlagBitsEXT
import Vulkan.Types.Enum.VkMicromapCreateFlagsEXT
import Vulkan.Types.Enum.VkMicromapTypeEXT
import Vulkan.Types.Enum.VkObjectType
import Vulkan.Types.Enum.VkOpacityMicromapFormatEXT
import Vulkan.Types.Enum.VkOpacityMicromapSpecialIndexEXT
import Vulkan.Types.Enum.VkPipelineCreateFlagBits
import Vulkan.Types.Enum.VkPipelineStageFlagBits2
import Vulkan.Types.Enum.VkQueryType
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAccelerationStructureTrianglesOpacityMicromapEXT
import Vulkan.Types.Struct.VkCopyMemoryToMicromapInfoEXT
import Vulkan.Types.Struct.VkCopyMicromapInfoEXT
import Vulkan.Types.Struct.VkCopyMicromapToMemoryInfoEXT
import Vulkan.Types.Struct.VkMicromapBuildInfoEXT
import Vulkan.Types.Struct.VkMicromapBuildSizesInfoEXT
import Vulkan.Types.Struct.VkMicromapCreateInfoEXT
import Vulkan.Types.Struct.VkMicromapTriangleEXT
import Vulkan.Types.Struct.VkMicromapUsageEXT
import Vulkan.Types.Struct.VkMicromapVersionInfoEXT
import Vulkan.Types.Struct.VkPhysicalDeviceOpacityMicromapFeaturesEXT
import Vulkan.Types.Struct.VkPhysicalDeviceOpacityMicromapPropertiesEXT
import Vulkan.Types.Command.VkBuildMicromapsEXT
import Vulkan.Types.Command.VkCmdBuildMicromapsEXT
import Vulkan.Types.Command.VkCmdCopyMemoryToMicromapEXT
import Vulkan.Types.Command.VkCmdCopyMicromapEXT
import Vulkan.Types.Command.VkCmdCopyMicromapToMemoryEXT
import Vulkan.Types.Command.VkCmdWriteMicromapsPropertiesEXT
import Vulkan.Types.Command.VkCopyMemoryToMicromapEXT
import Vulkan.Types.Command.VkCopyMicromapEXT
import Vulkan.Types.Command.VkCopyMicromapToMemoryEXT
import Vulkan.Types.Command.VkCreateMicromapEXT
import Vulkan.Types.Command.VkDestroyMicromapEXT
import Vulkan.Types.Command.VkGetDeviceMicromapCompatibilityEXT
import Vulkan.Types.Command.VkGetMicromapBuildSizesEXT
import Vulkan.Types.Command.VkWriteMicromapsPropertiesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_OPACITY_MICROMAP_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_OPACITY_MICROMAP_SPEC_VERSION = 2

pattern VK_EXT_OPACITY_MICROMAP_EXTENSION_NAME :: CString
pattern VK_EXT_OPACITY_MICROMAP_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_OPACITY_MICROMAP_EXTENSION_NAME = Ptr ("VK_EXT_opacity_micromap\0"##)

#else

module Vulkan.Ext.VK_EXT_opacity_micromap where

#endif
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_ray_tracing_maintenance1

module Vulkan.Ext.VK_KHR_ray_tracing_maintenance1
  ( pattern VK_KHR_RAY_TRACING_MAINTENANCE_1_SPEC_VERSION
  , pattern VK_KHR_RAY_TRACING_MAINTENANCE_1_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_MAINTENANCE_1_FEATURES_KHR
  , pattern VK_QUERY_TYPE_ACCELERATION_STRUCTURE_SERIALIZATION_BOTTOM_LEVEL_POINTERS_KHR
  , pattern VK_QUERY_TYPE_ACCELERATION_STRUCTURE_SIZE_KHR
  , VkPhysicalDeviceRayTracingMaintenance1FeaturesKHR (..)
#if VK_KHR_synchronization2
  , pattern VK_PIPELINE_STAGE_2_ACCELERATION_STRUCTURE_COPY_BIT_KHR
#endif
#if (VK_KHR_ray_tracing_pipeline) || (VK_KHR_synchronization2)
  , pattern VK_ACCESS_2_SHADER_BINDING_TABLE_READ_BIT_KHR
#endif
#if VK_KHR_ray_tracing_pipeline
  , VkTraceRaysIndirectCommand2KHR (..)
  , VkCmdTraceRaysIndirect2KHR
  , vkFunCmdTraceRaysIndirect2KHR
#endif
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkAccessFlagBits2
import Vulkan.Types.Enum.VkPipelineStageFlagBits2
import Vulkan.Types.Enum.VkQueryType
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceRayTracingMaintenance1FeaturesKHR
import Vulkan.Types.Struct.VkTraceRaysIndirectCommand2KHR
import Vulkan.Types.Command.VkCmdTraceRaysIndirect2KHR
import Vulkan.Types.VkFun



pattern VK_KHR_RAY_TRACING_MAINTENANCE_1_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_RAY_TRACING_MAINTENANCE_1_SPEC_VERSION = 1

pattern VK_KHR_RAY_TRACING_MAINTENANCE_1_EXTENSION_NAME :: CString
pattern VK_KHR_RAY_TRACING_MAINTENANCE_1_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_RAY_TRACING_MAINTENANCE_1_EXTENSION_NAME = Ptr ("VK_KHR_ray_tracing_maintenance1\0"##)

#else

module Vulkan.Ext.VK_KHR_ray_tracing_maintenance1 where

#endif
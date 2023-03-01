{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing_invocation_reorder

module Vulkan.Ext.VK_NV_ray_tracing_invocation_reorder
  ( pattern VK_NV_RAY_TRACING_INVOCATION_REORDER_SPEC_VERSION
  , pattern VK_NV_RAY_TRACING_INVOCATION_REORDER_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_INVOCATION_REORDER_FEATURES_NV
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_INVOCATION_REORDER_PROPERTIES_NV
  , VkRayTracingInvocationReorderModeNV
  , pattern VK_RAY_TRACING_INVOCATION_REORDER_MODE_NONE_NV
  , pattern VK_RAY_TRACING_INVOCATION_REORDER_MODE_REORDER_NV
  , VkPhysicalDeviceRayTracingInvocationReorderPropertiesNV (..)
  , VkPhysicalDeviceRayTracingInvocationReorderFeaturesNV (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkRayTracingInvocationReorderModeNV
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceRayTracingInvocationReorderFeaturesNV
import Vulkan.Types.Struct.VkPhysicalDeviceRayTracingInvocationReorderPropertiesNV
import Vulkan.Types.VkFun



pattern VK_NV_RAY_TRACING_INVOCATION_REORDER_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_RAY_TRACING_INVOCATION_REORDER_SPEC_VERSION = 1

pattern VK_NV_RAY_TRACING_INVOCATION_REORDER_EXTENSION_NAME :: CString
pattern VK_NV_RAY_TRACING_INVOCATION_REORDER_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_RAY_TRACING_INVOCATION_REORDER_EXTENSION_NAME = Ptr ("VK_NV_ray_tracing_invocation_reorder\0"##)

#else

module Vulkan.Ext.VK_NV_ray_tracing_invocation_reorder where

#endif
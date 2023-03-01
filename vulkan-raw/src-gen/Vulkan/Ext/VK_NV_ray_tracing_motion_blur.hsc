{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing_motion_blur

module Vulkan.Ext.VK_NV_ray_tracing_motion_blur
  ( pattern VK_NV_RAY_TRACING_MOTION_BLUR_SPEC_VERSION
  , pattern VK_NV_RAY_TRACING_MOTION_BLUR_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_MOTION_TRIANGLES_DATA_NV
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_MOTION_BLUR_FEATURES_NV
  , pattern VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_MOTION_INFO_NV
  , pattern VK_BUILD_ACCELERATION_STRUCTURE_MOTION_BIT_NV
  , pattern VK_ACCELERATION_STRUCTURE_CREATE_MOTION_BIT_NV
  , pattern VK_PIPELINE_CREATE_RAY_TRACING_ALLOW_MOTION_BIT_NV
  , VkAccelerationStructureGeometryMotionTrianglesDataNV (..)
  , VkAccelerationStructureMotionInfoNV (..)
  , VkAccelerationStructureMotionInstanceNV (..)
  , VkAccelerationStructureMotionInstanceDataNV (..)
  , VkAccelerationStructureMatrixMotionInstanceNV (..)
  , VkAccelerationStructureSRTMotionInstanceNV (..)
  , VkSRTDataNV (..)
  , VkAccelerationStructureMotionInstanceTypeNV
  , pattern VK_ACCELERATION_STRUCTURE_MOTION_INSTANCE_TYPE_STATIC_NV
  , pattern VK_ACCELERATION_STRUCTURE_MOTION_INSTANCE_TYPE_MATRIX_MOTION_NV
  , pattern VK_ACCELERATION_STRUCTURE_MOTION_INSTANCE_TYPE_SRT_MOTION_NV
  , VkPhysicalDeviceRayTracingMotionBlurFeaturesNV (..)
  , VkAccelerationStructureMotionInfoFlagsNV
  , VkAccelerationStructureMotionInstanceFlagsNV
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkAccelerationStructureCreateFlagBitsKHR
import Vulkan.Types.Enum.VkAccelerationStructureMotionInfoFlagsNV
import Vulkan.Types.Enum.VkAccelerationStructureMotionInstanceFlagsNV
import Vulkan.Types.Enum.VkAccelerationStructureMotionInstanceTypeNV
import Vulkan.Types.Enum.VkBuildAccelerationStructureFlagBitsKHR
import Vulkan.Types.Enum.VkPipelineCreateFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkAccelerationStructureGeometryMotionTrianglesDataNV
import Vulkan.Types.Struct.VkAccelerationStructureMatrixMotionInstanceNV
import Vulkan.Types.Struct.VkAccelerationStructureMotionInfoNV
import Vulkan.Types.Struct.VkAccelerationStructureMotionInstanceNV
import Vulkan.Types.Struct.VkAccelerationStructureSRTMotionInstanceNV
import Vulkan.Types.Struct.VkPhysicalDeviceRayTracingMotionBlurFeaturesNV
import Vulkan.Types.Struct.VkSRTDataNV
import Vulkan.Types.Union.VkAccelerationStructureMotionInstanceDataNV
import Vulkan.Types.VkFun



pattern VK_NV_RAY_TRACING_MOTION_BLUR_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_RAY_TRACING_MOTION_BLUR_SPEC_VERSION = 1

pattern VK_NV_RAY_TRACING_MOTION_BLUR_EXTENSION_NAME :: CString
pattern VK_NV_RAY_TRACING_MOTION_BLUR_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_RAY_TRACING_MOTION_BLUR_EXTENSION_NAME = Ptr ("VK_NV_ray_tracing_motion_blur\0"##)

#else

module Vulkan.Ext.VK_NV_ray_tracing_motion_blur where

#endif
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_shader_subgroup_uniform_control_flow

module Vulkan.Ext.VK_KHR_shader_subgroup_uniform_control_flow
  ( pattern VK_KHR_SHADER_SUBGROUP_UNIFORM_CONTROL_FLOW_SPEC_VERSION
  , pattern VK_KHR_SHADER_SUBGROUP_UNIFORM_CONTROL_FLOW_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SUBGROUP_UNIFORM_CONTROL_FLOW_FEATURES_KHR
  , VkPhysicalDeviceShaderSubgroupUniformControlFlowFeaturesKHR (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceShaderSubgroupUniformControlFlowFeaturesKHR
import Vulkan.Types.VkFun



pattern VK_KHR_SHADER_SUBGROUP_UNIFORM_CONTROL_FLOW_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_SHADER_SUBGROUP_UNIFORM_CONTROL_FLOW_SPEC_VERSION = 1

pattern VK_KHR_SHADER_SUBGROUP_UNIFORM_CONTROL_FLOW_EXTENSION_NAME :: CString
pattern VK_KHR_SHADER_SUBGROUP_UNIFORM_CONTROL_FLOW_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_SHADER_SUBGROUP_UNIFORM_CONTROL_FLOW_EXTENSION_NAME = Ptr ("VK_KHR_shader_subgroup_uniform_control_flow\0"##)

#else

module Vulkan.Ext.VK_KHR_shader_subgroup_uniform_control_flow where

#endif
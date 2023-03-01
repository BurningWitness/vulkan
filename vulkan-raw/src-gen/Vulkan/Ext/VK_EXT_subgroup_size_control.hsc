{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_subgroup_size_control

module Vulkan.Ext.VK_EXT_subgroup_size_control
  ( pattern VK_EXT_SUBGROUP_SIZE_CONTROL_SPEC_VERSION
  , pattern VK_EXT_SUBGROUP_SIZE_CONTROL_EXTENSION_NAME
  , VkPhysicalDeviceSubgroupSizeControlFeaturesEXT
  , VkPhysicalDeviceSubgroupSizeControlPropertiesEXT
  , VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_PROPERTIES_EXT
  , pattern VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_REQUIRED_SUBGROUP_SIZE_CREATE_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_FEATURES_EXT
  , pattern VK_PIPELINE_SHADER_STAGE_CREATE_ALLOW_VARYING_SUBGROUP_SIZE_BIT_EXT
  , pattern VK_PIPELINE_SHADER_STAGE_CREATE_REQUIRE_FULL_SUBGROUPS_BIT_EXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkPipelineShaderStageCreateFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceSubgroupSizeControlFeaturesEXT
import Vulkan.Types.Struct.VkPhysicalDeviceSubgroupSizeControlPropertiesEXT
import Vulkan.Types.Struct.VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT
import Vulkan.Types.VkFun



pattern VK_EXT_SUBGROUP_SIZE_CONTROL_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_SUBGROUP_SIZE_CONTROL_SPEC_VERSION = 2

pattern VK_EXT_SUBGROUP_SIZE_CONTROL_EXTENSION_NAME :: CString
pattern VK_EXT_SUBGROUP_SIZE_CONTROL_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_SUBGROUP_SIZE_CONTROL_EXTENSION_NAME = Ptr ("VK_EXT_subgroup_size_control\0"##)

#else

module Vulkan.Ext.VK_EXT_subgroup_size_control where

#endif
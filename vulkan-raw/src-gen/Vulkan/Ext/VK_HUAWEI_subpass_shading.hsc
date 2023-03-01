{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_HUAWEI_subpass_shading

module Vulkan.Ext.VK_HUAWEI_subpass_shading
  ( pattern VK_HUAWEI_SUBPASS_SHADING_SPEC_VERSION
  , pattern VK_HUAWEI_SUBPASS_SHADING_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_SUBPASS_SHADING_PIPELINE_CREATE_INFO_HUAWEI
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBPASS_SHADING_FEATURES_HUAWEI
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBPASS_SHADING_PROPERTIES_HUAWEI
  , pattern VK_PIPELINE_BIND_POINT_SUBPASS_SHADING_HUAWEI
  , pattern VK_PIPELINE_STAGE_2_SUBPASS_SHADING_BIT_HUAWEI
  , pattern VK_SHADER_STAGE_SUBPASS_SHADING_BIT_HUAWEI
  , VkSubpassShadingPipelineCreateInfoHUAWEI (..)
  , VkPhysicalDeviceSubpassShadingFeaturesHUAWEI (..)
  , VkPhysicalDeviceSubpassShadingPropertiesHUAWEI (..)
  , VkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI
  , vkFunGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI
  , VkCmdSubpassShadingHUAWEI
  , vkFunCmdSubpassShadingHUAWEI
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkPipelineBindPoint
import Vulkan.Types.Enum.VkPipelineStageFlagBits2
import Vulkan.Types.Enum.VkShaderStageFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceSubpassShadingFeaturesHUAWEI
import Vulkan.Types.Struct.VkPhysicalDeviceSubpassShadingPropertiesHUAWEI
import Vulkan.Types.Struct.VkSubpassShadingPipelineCreateInfoHUAWEI
import Vulkan.Types.Command.VkCmdSubpassShadingHUAWEI
import Vulkan.Types.Command.VkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI
import Vulkan.Types.VkFun



pattern VK_HUAWEI_SUBPASS_SHADING_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_HUAWEI_SUBPASS_SHADING_SPEC_VERSION = 2

pattern VK_HUAWEI_SUBPASS_SHADING_EXTENSION_NAME :: CString
pattern VK_HUAWEI_SUBPASS_SHADING_EXTENSION_NAME <- (const False -> True)
  where
    VK_HUAWEI_SUBPASS_SHADING_EXTENSION_NAME = Ptr ("VK_HUAWEI_subpass_shading\0"##)

#else

module Vulkan.Ext.VK_HUAWEI_subpass_shading where

#endif
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_HUAWEI_cluster_culling_shader

module Vulkan.Ext.VK_HUAWEI_cluster_culling_shader
  ( pattern VK_HUAWEI_CLUSTER_CULLING_SHADER_SPEC_VERSION
  , pattern VK_HUAWEI_CLUSTER_CULLING_SHADER_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CLUSTER_CULLING_SHADER_FEATURES_HUAWEI
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CLUSTER_CULLING_SHADER_PROPERTIES_HUAWEI
  , pattern VK_PIPELINE_STAGE_2_CLUSTER_CULLING_SHADER_BIT_HUAWEI
  , pattern VK_SHADER_STAGE_CLUSTER_CULLING_BIT_HUAWEI
  , pattern VK_QUERY_PIPELINE_STATISTIC_CLUSTER_CULLING_SHADER_INVOCATIONS_BIT_HUAWEI
  , VkCmdDrawClusterHUAWEI
  , vkFunCmdDrawClusterHUAWEI
  , VkCmdDrawClusterIndirectHUAWEI
  , vkFunCmdDrawClusterIndirectHUAWEI
  , VkPhysicalDeviceClusterCullingShaderFeaturesHUAWEI (..)
  , VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkPipelineStageFlagBits2
import Vulkan.Types.Enum.VkQueryPipelineStatisticFlagBits
import Vulkan.Types.Enum.VkShaderStageFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceClusterCullingShaderFeaturesHUAWEI
import Vulkan.Types.Struct.VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI
import Vulkan.Types.Command.VkCmdDrawClusterHUAWEI
import Vulkan.Types.Command.VkCmdDrawClusterIndirectHUAWEI
import Vulkan.Types.VkFun



pattern VK_HUAWEI_CLUSTER_CULLING_SHADER_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_HUAWEI_CLUSTER_CULLING_SHADER_SPEC_VERSION = 1

pattern VK_HUAWEI_CLUSTER_CULLING_SHADER_EXTENSION_NAME :: CString
pattern VK_HUAWEI_CLUSTER_CULLING_SHADER_EXTENSION_NAME <- (const False -> True)
  where
    VK_HUAWEI_CLUSTER_CULLING_SHADER_EXTENSION_NAME = Ptr ("VK_HUAWEI_cluster_culling_shader\0"##)

#else

module Vulkan.Ext.VK_HUAWEI_cluster_culling_shader where

#endif
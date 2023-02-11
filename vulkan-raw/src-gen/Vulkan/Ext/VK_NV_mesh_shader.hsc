{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_mesh_shader

module Vulkan.Ext.VK_NV_mesh_shader
  ( pattern VK_NV_MESH_SHADER_SPEC_VERSION
  , pattern VK_NV_MESH_SHADER_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_FEATURES_NV
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_PROPERTIES_NV
  , pattern VK_SHADER_STAGE_TASK_BIT_NV
  , pattern VK_SHADER_STAGE_MESH_BIT_NV
  , pattern VK_PIPELINE_STAGE_TASK_SHADER_BIT_NV
  , pattern VK_PIPELINE_STAGE_MESH_SHADER_BIT_NV
  , VkCmdDrawMeshTasksNV
  , vkFunCmdDrawMeshTasksNV
  , VkCmdDrawMeshTasksIndirectNV
  , vkFunCmdDrawMeshTasksIndirectNV
  , VkCmdDrawMeshTasksIndirectCountNV
  , vkFunCmdDrawMeshTasksIndirectCountNV
  , VkPhysicalDeviceMeshShaderFeaturesNV (..)
  , VkPhysicalDeviceMeshShaderPropertiesNV (..)
  , VkDrawMeshTasksIndirectCommandNV (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkPipelineStageFlagBits
import Vulkan.Types.Enum.VkShaderStageFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDrawMeshTasksIndirectCommandNV
import Vulkan.Types.Struct.VkPhysicalDeviceMeshShaderFeaturesNV
import Vulkan.Types.Struct.VkPhysicalDeviceMeshShaderPropertiesNV
import Vulkan.Types.Command.VkCmdDrawMeshTasksIndirectCountNV
import Vulkan.Types.Command.VkCmdDrawMeshTasksIndirectNV
import Vulkan.Types.Command.VkCmdDrawMeshTasksNV
import Vulkan.Types.VkFun



pattern VK_NV_MESH_SHADER_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_MESH_SHADER_SPEC_VERSION = 1

pattern VK_NV_MESH_SHADER_EXTENSION_NAME :: CString
pattern VK_NV_MESH_SHADER_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_MESH_SHADER_EXTENSION_NAME = Ptr ("VK_NV_mesh_shader\0"##)

#else

module Vulkan.Ext.VK_NV_mesh_shader where

#endif
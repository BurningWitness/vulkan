{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_mesh_shader

module Vulkan.Ext.VK_EXT_mesh_shader
  ( pattern VK_EXT_MESH_SHADER_SPEC_VERSION
  , pattern VK_EXT_MESH_SHADER_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_PROPERTIES_EXT
  , pattern VK_SHADER_STAGE_TASK_BIT_EXT
  , pattern VK_SHADER_STAGE_MESH_BIT_EXT
  , pattern VK_PIPELINE_STAGE_TASK_SHADER_BIT_EXT
  , pattern VK_PIPELINE_STAGE_MESH_SHADER_BIT_EXT
  , pattern VK_QUERY_TYPE_MESH_PRIMITIVES_GENERATED_EXT
  , pattern VK_QUERY_PIPELINE_STATISTIC_TASK_SHADER_INVOCATIONS_BIT_EXT
  , pattern VK_QUERY_PIPELINE_STATISTIC_MESH_SHADER_INVOCATIONS_BIT_EXT
  , VkCmdDrawMeshTasksEXT
  , vkFunCmdDrawMeshTasksEXT
  , VkCmdDrawMeshTasksIndirectEXT
  , vkFunCmdDrawMeshTasksIndirectEXT
  , VkCmdDrawMeshTasksIndirectCountEXT
  , vkFunCmdDrawMeshTasksIndirectCountEXT
  , VkPhysicalDeviceMeshShaderFeaturesEXT (..)
  , VkPhysicalDeviceMeshShaderPropertiesEXT (..)
  , VkDrawMeshTasksIndirectCommandEXT (..)
#if VK_NV_device_generated_commands
  , pattern VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_MESH_TASKS_NV
#endif
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkIndirectCommandsTokenTypeNV
import Vulkan.Types.Enum.VkPipelineStageFlagBits
import Vulkan.Types.Enum.VkQueryPipelineStatisticFlagBits
import Vulkan.Types.Enum.VkQueryType
import Vulkan.Types.Enum.VkShaderStageFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDrawMeshTasksIndirectCommandEXT
import Vulkan.Types.Struct.VkPhysicalDeviceMeshShaderFeaturesEXT
import Vulkan.Types.Struct.VkPhysicalDeviceMeshShaderPropertiesEXT
import Vulkan.Types.Command.VkCmdDrawMeshTasksEXT
import Vulkan.Types.Command.VkCmdDrawMeshTasksIndirectCountEXT
import Vulkan.Types.Command.VkCmdDrawMeshTasksIndirectEXT
import Vulkan.Types.VkFun



pattern VK_EXT_MESH_SHADER_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_MESH_SHADER_SPEC_VERSION = 1

pattern VK_EXT_MESH_SHADER_EXTENSION_NAME :: CString
pattern VK_EXT_MESH_SHADER_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_MESH_SHADER_EXTENSION_NAME = Ptr ("VK_EXT_mesh_shader\0"##)

#else

module Vulkan.Ext.VK_EXT_mesh_shader where

#endif
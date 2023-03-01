{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_device_generated_commands

module Vulkan.Ext.VK_NV_device_generated_commands
  ( pattern VK_NV_DEVICE_GENERATED_COMMANDS_SPEC_VERSION
  , pattern VK_NV_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_PROPERTIES_NV
  , pattern VK_STRUCTURE_TYPE_GRAPHICS_SHADER_GROUP_CREATE_INFO_NV
  , pattern VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_SHADER_GROUPS_CREATE_INFO_NV
  , pattern VK_STRUCTURE_TYPE_INDIRECT_COMMANDS_LAYOUT_TOKEN_NV
  , pattern VK_STRUCTURE_TYPE_INDIRECT_COMMANDS_LAYOUT_CREATE_INFO_NV
  , pattern VK_STRUCTURE_TYPE_GENERATED_COMMANDS_INFO_NV
  , pattern VK_STRUCTURE_TYPE_GENERATED_COMMANDS_MEMORY_REQUIREMENTS_INFO_NV
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_FEATURES_NV
  , pattern VK_PIPELINE_CREATE_INDIRECT_BINDABLE_BIT_NV
  , pattern VK_PIPELINE_STAGE_COMMAND_PREPROCESS_BIT_NV
  , pattern VK_ACCESS_COMMAND_PREPROCESS_READ_BIT_NV
  , pattern VK_ACCESS_COMMAND_PREPROCESS_WRITE_BIT_NV
  , pattern VK_OBJECT_TYPE_INDIRECT_COMMANDS_LAYOUT_NV
  , VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV (..)
  , VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV (..)
  , VkGraphicsShaderGroupCreateInfoNV (..)
  , VkGraphicsPipelineShaderGroupsCreateInfoNV (..)
  , VkBindShaderGroupIndirectCommandNV (..)
  , VkBindIndexBufferIndirectCommandNV (..)
  , VkBindVertexBufferIndirectCommandNV (..)
  , VkSetStateFlagsIndirectCommandNV (..)
  , VkIndirectStateFlagBitsNV
  , pattern VK_INDIRECT_STATE_FLAG_FRONTFACE_BIT_NV
  , VkIndirectStateFlagsNV
  , VkIndirectCommandsLayoutNV_T
  , VkIndirectCommandsLayoutNV
  , VkIndirectCommandsTokenTypeNV
  , pattern VK_INDIRECT_COMMANDS_TOKEN_TYPE_SHADER_GROUP_NV
  , pattern VK_INDIRECT_COMMANDS_TOKEN_TYPE_STATE_FLAGS_NV
  , pattern VK_INDIRECT_COMMANDS_TOKEN_TYPE_INDEX_BUFFER_NV
  , pattern VK_INDIRECT_COMMANDS_TOKEN_TYPE_VERTEX_BUFFER_NV
  , pattern VK_INDIRECT_COMMANDS_TOKEN_TYPE_PUSH_CONSTANT_NV
  , pattern VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_INDEXED_NV
  , pattern VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_NV
  , pattern VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_TASKS_NV
  , VkIndirectCommandsLayoutUsageFlagBitsNV
  , pattern VK_INDIRECT_COMMANDS_LAYOUT_USAGE_EXPLICIT_PREPROCESS_BIT_NV
  , pattern VK_INDIRECT_COMMANDS_LAYOUT_USAGE_INDEXED_SEQUENCES_BIT_NV
  , pattern VK_INDIRECT_COMMANDS_LAYOUT_USAGE_UNORDERED_SEQUENCES_BIT_NV
  , VkIndirectCommandsLayoutUsageFlagsNV
  , VkIndirectCommandsStreamNV (..)
  , VkIndirectCommandsLayoutTokenNV (..)
  , VkIndirectCommandsLayoutCreateInfoNV (..)
  , VkGeneratedCommandsInfoNV (..)
  , VkGeneratedCommandsMemoryRequirementsInfoNV (..)
  , VkGetGeneratedCommandsMemoryRequirementsNV
  , vkFunGetGeneratedCommandsMemoryRequirementsNV
  , VkCmdPreprocessGeneratedCommandsNV
  , vkFunCmdPreprocessGeneratedCommandsNV
  , VkCmdExecuteGeneratedCommandsNV
  , vkFunCmdExecuteGeneratedCommandsNV
  , VkCmdBindPipelineShaderGroupNV
  , vkFunCmdBindPipelineShaderGroupNV
  , VkCreateIndirectCommandsLayoutNV
  , vkFunCreateIndirectCommandsLayoutNV
  , VkDestroyIndirectCommandsLayoutNV
  , vkFunDestroyIndirectCommandsLayoutNV
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkAccessFlagBits
import Vulkan.Types.Enum.VkIndirectCommandsLayoutUsageFlagBitsNV
import Vulkan.Types.Enum.VkIndirectCommandsLayoutUsageFlagsNV
import Vulkan.Types.Enum.VkIndirectCommandsTokenTypeNV
import Vulkan.Types.Enum.VkIndirectStateFlagBitsNV
import Vulkan.Types.Enum.VkIndirectStateFlagsNV
import Vulkan.Types.Enum.VkObjectType
import Vulkan.Types.Enum.VkPipelineCreateFlagBits
import Vulkan.Types.Enum.VkPipelineStageFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBindIndexBufferIndirectCommandNV
import Vulkan.Types.Struct.VkBindShaderGroupIndirectCommandNV
import Vulkan.Types.Struct.VkBindVertexBufferIndirectCommandNV
import Vulkan.Types.Struct.VkGeneratedCommandsInfoNV
import Vulkan.Types.Struct.VkGeneratedCommandsMemoryRequirementsInfoNV
import Vulkan.Types.Struct.VkGraphicsPipelineShaderGroupsCreateInfoNV
import Vulkan.Types.Struct.VkGraphicsShaderGroupCreateInfoNV
import Vulkan.Types.Struct.VkIndirectCommandsLayoutCreateInfoNV
import Vulkan.Types.Struct.VkIndirectCommandsLayoutTokenNV
import Vulkan.Types.Struct.VkIndirectCommandsStreamNV
import Vulkan.Types.Struct.VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV
import Vulkan.Types.Struct.VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV
import Vulkan.Types.Struct.VkSetStateFlagsIndirectCommandNV
import Vulkan.Types.Command.VkCmdBindPipelineShaderGroupNV
import Vulkan.Types.Command.VkCmdExecuteGeneratedCommandsNV
import Vulkan.Types.Command.VkCmdPreprocessGeneratedCommandsNV
import Vulkan.Types.Command.VkCreateIndirectCommandsLayoutNV
import Vulkan.Types.Command.VkDestroyIndirectCommandsLayoutNV
import Vulkan.Types.Command.VkGetGeneratedCommandsMemoryRequirementsNV
import Vulkan.Types.VkFun



pattern VK_NV_DEVICE_GENERATED_COMMANDS_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_DEVICE_GENERATED_COMMANDS_SPEC_VERSION = 3

pattern VK_NV_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME :: CString
pattern VK_NV_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME = Ptr ("VK_NV_device_generated_commands\0"##)

#else

module Vulkan.Ext.VK_NV_device_generated_commands where

#endif
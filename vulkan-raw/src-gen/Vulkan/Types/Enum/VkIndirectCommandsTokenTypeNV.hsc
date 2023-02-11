{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkIndirectCommandsTokenTypeNV where

import Data.Int



#if VK_NV_device_generated_commands
type VkIndirectCommandsTokenTypeNV = #{type int}
#endif

#if VK_NV_device_generated_commands
pattern VK_INDIRECT_COMMANDS_TOKEN_TYPE_SHADER_GROUP_NV :: (Eq a, Num a) => a
pattern VK_INDIRECT_COMMANDS_TOKEN_TYPE_SHADER_GROUP_NV = 0
#endif

#if VK_NV_device_generated_commands
pattern VK_INDIRECT_COMMANDS_TOKEN_TYPE_STATE_FLAGS_NV :: (Eq a, Num a) => a
pattern VK_INDIRECT_COMMANDS_TOKEN_TYPE_STATE_FLAGS_NV = 1
#endif

#if VK_NV_device_generated_commands
pattern VK_INDIRECT_COMMANDS_TOKEN_TYPE_INDEX_BUFFER_NV :: (Eq a, Num a) => a
pattern VK_INDIRECT_COMMANDS_TOKEN_TYPE_INDEX_BUFFER_NV = 2
#endif

#if VK_NV_device_generated_commands
pattern VK_INDIRECT_COMMANDS_TOKEN_TYPE_VERTEX_BUFFER_NV :: (Eq a, Num a) => a
pattern VK_INDIRECT_COMMANDS_TOKEN_TYPE_VERTEX_BUFFER_NV = 3
#endif

#if VK_NV_device_generated_commands
pattern VK_INDIRECT_COMMANDS_TOKEN_TYPE_PUSH_CONSTANT_NV :: (Eq a, Num a) => a
pattern VK_INDIRECT_COMMANDS_TOKEN_TYPE_PUSH_CONSTANT_NV = 4
#endif

#if VK_NV_device_generated_commands
pattern VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_INDEXED_NV :: (Eq a, Num a) => a
pattern VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_INDEXED_NV = 5
#endif

#if VK_NV_device_generated_commands
pattern VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_NV :: (Eq a, Num a) => a
pattern VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_NV = 6
#endif

#if VK_NV_device_generated_commands
pattern VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_TASKS_NV :: (Eq a, Num a) => a
pattern VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_TASKS_NV = 7
#endif

#if VK_EXT_mesh_shader && VK_NV_device_generated_commands
pattern VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_MESH_TASKS_NV :: (Eq a, Num a) => a
pattern VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_MESH_TASKS_NV = 1000328000
#endif
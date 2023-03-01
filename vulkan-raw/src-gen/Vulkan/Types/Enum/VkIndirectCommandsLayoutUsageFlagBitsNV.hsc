{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkIndirectCommandsLayoutUsageFlagBitsNV where

import Vulkan.Types.Base



#if VK_NV_device_generated_commands
type VkIndirectCommandsLayoutUsageFlagBitsNV = VkFlags
#endif

#if VK_NV_device_generated_commands
pattern VK_INDIRECT_COMMANDS_LAYOUT_USAGE_EXPLICIT_PREPROCESS_BIT_NV :: (Eq a, Num a) => a
pattern VK_INDIRECT_COMMANDS_LAYOUT_USAGE_EXPLICIT_PREPROCESS_BIT_NV = 1
#endif

#if VK_NV_device_generated_commands
pattern VK_INDIRECT_COMMANDS_LAYOUT_USAGE_INDEXED_SEQUENCES_BIT_NV :: (Eq a, Num a) => a
pattern VK_INDIRECT_COMMANDS_LAYOUT_USAGE_INDEXED_SEQUENCES_BIT_NV = 2
#endif

#if VK_NV_device_generated_commands
pattern VK_INDIRECT_COMMANDS_LAYOUT_USAGE_UNORDERED_SEQUENCES_BIT_NV :: (Eq a, Num a) => a
pattern VK_INDIRECT_COMMANDS_LAYOUT_USAGE_UNORDERED_SEQUENCES_BIT_NV = 4
#endif
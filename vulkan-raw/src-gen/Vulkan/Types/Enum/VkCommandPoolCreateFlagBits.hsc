{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkCommandPoolCreateFlagBits where

import Vulkan.Types.Base



type VkCommandPoolCreateFlagBits = VkFlags

-- | Command buffers have a short lifetime
pattern VK_COMMAND_POOL_CREATE_TRANSIENT_BIT :: (Eq a, Num a) => a
pattern VK_COMMAND_POOL_CREATE_TRANSIENT_BIT = 1

-- | Command buffers may release their memory individually
pattern VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT :: (Eq a, Num a) => a
pattern VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT = 2

#if VK_VERSION_1_1
-- | Command buffers allocated from pool are protected command buffers
pattern VK_COMMAND_POOL_CREATE_PROTECTED_BIT :: (Eq a, Num a) => a
pattern VK_COMMAND_POOL_CREATE_PROTECTED_BIT = 4
#endif
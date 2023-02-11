{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkCommandBufferUsageFlagBits where

import Vulkan.Types.Base



type VkCommandBufferUsageFlagBits = VkFlags

pattern VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT :: (Eq a, Num a) => a
pattern VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT = 1

pattern VK_COMMAND_BUFFER_USAGE_RENDER_PASS_CONTINUE_BIT :: (Eq a, Num a) => a
pattern VK_COMMAND_BUFFER_USAGE_RENDER_PASS_CONTINUE_BIT = 2

-- | Command buffer may be submitted/executed more than once simultaneously
pattern VK_COMMAND_BUFFER_USAGE_SIMULTANEOUS_USE_BIT :: (Eq a, Num a) => a
pattern VK_COMMAND_BUFFER_USAGE_SIMULTANEOUS_USE_BIT = 4
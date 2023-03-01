{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkCommandBufferResetFlagBits where

import Vulkan.Types.Base



type VkCommandBufferResetFlagBits = VkFlags

-- | Release resources owned by the buffer
pattern VK_COMMAND_BUFFER_RESET_RELEASE_RESOURCES_BIT :: (Eq a, Num a) => a
pattern VK_COMMAND_BUFFER_RESET_RELEASE_RESOURCES_BIT = 1
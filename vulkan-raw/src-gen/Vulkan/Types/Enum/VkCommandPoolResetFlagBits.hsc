{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkCommandPoolResetFlagBits where

import Vulkan.Types.Base



type VkCommandPoolResetFlagBits = VkFlags

-- | Release resources owned by the pool
pattern VK_COMMAND_POOL_RESET_RELEASE_RESOURCES_BIT :: (Eq a, Num a) => a
pattern VK_COMMAND_POOL_RESET_RELEASE_RESOURCES_BIT = 1
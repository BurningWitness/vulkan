{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkCommandBufferLevel where

import Data.Int



type VkCommandBufferLevel = #{type int}

pattern VK_COMMAND_BUFFER_LEVEL_PRIMARY :: (Eq a, Num a) => a
pattern VK_COMMAND_BUFFER_LEVEL_PRIMARY = 0

pattern VK_COMMAND_BUFFER_LEVEL_SECONDARY :: (Eq a, Num a) => a
pattern VK_COMMAND_BUFFER_LEVEL_SECONDARY = 1
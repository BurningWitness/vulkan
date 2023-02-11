{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkColorComponentFlagBits where

import Vulkan.Types.Base



type VkColorComponentFlagBits = VkFlags

pattern VK_COLOR_COMPONENT_R_BIT :: (Eq a, Num a) => a
pattern VK_COLOR_COMPONENT_R_BIT = 1

pattern VK_COLOR_COMPONENT_G_BIT :: (Eq a, Num a) => a
pattern VK_COLOR_COMPONENT_G_BIT = 2

pattern VK_COLOR_COMPONENT_B_BIT :: (Eq a, Num a) => a
pattern VK_COLOR_COMPONENT_B_BIT = 4

pattern VK_COLOR_COMPONENT_A_BIT :: (Eq a, Num a) => a
pattern VK_COLOR_COMPONENT_A_BIT = 8
{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkCullModeFlagBits where

import Vulkan.Types.Base



type VkCullModeFlagBits = VkFlags

pattern VK_CULL_MODE_NONE :: (Eq a, Num a) => a
pattern VK_CULL_MODE_NONE = 0

pattern VK_CULL_MODE_FRONT_BIT :: (Eq a, Num a) => a
pattern VK_CULL_MODE_FRONT_BIT = 1

pattern VK_CULL_MODE_BACK_BIT :: (Eq a, Num a) => a
pattern VK_CULL_MODE_BACK_BIT = 2

pattern VK_CULL_MODE_FRONT_AND_BACK :: (Eq a, Num a) => a
pattern VK_CULL_MODE_FRONT_AND_BACK = 3
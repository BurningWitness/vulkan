{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkFenceCreateFlagBits where

import Vulkan.Types.Base



type VkFenceCreateFlagBits = VkFlags

pattern VK_FENCE_CREATE_SIGNALED_BIT :: (Eq a, Num a) => a
pattern VK_FENCE_CREATE_SIGNALED_BIT = 1
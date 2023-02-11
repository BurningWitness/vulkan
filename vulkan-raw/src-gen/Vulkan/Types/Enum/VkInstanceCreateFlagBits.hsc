{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkInstanceCreateFlagBits where

import Vulkan.Types.Base



type VkInstanceCreateFlagBits = VkFlags

#if VK_KHR_portability_enumeration
pattern VK_INSTANCE_CREATE_ENUMERATE_PORTABILITY_BIT_KHR :: (Eq a, Num a) => a
pattern VK_INSTANCE_CREATE_ENUMERATE_PORTABILITY_BIT_KHR = 1
#endif
{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSubmitFlagBits where

import Vulkan.Types.Base



#if VK_VERSION_1_3
type VkSubmitFlagBits = VkFlags
#endif

#if VK_VERSION_1_3
pattern VK_SUBMIT_PROTECTED_BIT :: (Eq a, Num a) => a
pattern VK_SUBMIT_PROTECTED_BIT = 1
#endif

#if VK_VERSION_1_3
pattern VK_SUBMIT_PROTECTED_BIT_KHR :: (Eq a, Num a) => a
pattern VK_SUBMIT_PROTECTED_BIT_KHR = VK_SUBMIT_PROTECTED_BIT
#endif
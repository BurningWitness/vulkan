{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkAccessFlagBits2KHR where

import Vulkan.Types.Base



#if VK_KHR_synchronization2
type VkAccessFlagBits2KHR = VkFlags64
#endif
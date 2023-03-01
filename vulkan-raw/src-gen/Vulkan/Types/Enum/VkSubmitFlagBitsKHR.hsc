{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSubmitFlagBitsKHR where

import Vulkan.Types.Base



#if VK_KHR_synchronization2
type VkSubmitFlagBitsKHR = VkFlags
#endif
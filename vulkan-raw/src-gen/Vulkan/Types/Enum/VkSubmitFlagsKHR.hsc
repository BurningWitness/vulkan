{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSubmitFlagsKHR where

import Vulkan.Types.Base



#if VK_KHR_synchronization2
type VkSubmitFlagsKHR = VkFlags
#endif
{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkCommandPoolTrimFlagsKHR where

import Vulkan.Types.Base



#if VK_KHR_maintenance1
type VkCommandPoolTrimFlagsKHR = VkFlags
#endif
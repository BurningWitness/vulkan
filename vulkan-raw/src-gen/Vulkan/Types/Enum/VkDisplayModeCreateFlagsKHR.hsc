{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDisplayModeCreateFlagsKHR where

import Vulkan.Types.Base



#if VK_KHR_display
type VkDisplayModeCreateFlagsKHR = VkFlags
#endif
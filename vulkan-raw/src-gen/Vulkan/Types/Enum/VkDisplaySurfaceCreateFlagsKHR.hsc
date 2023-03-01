{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDisplaySurfaceCreateFlagsKHR where

import Vulkan.Types.Base



#if VK_KHR_display
type VkDisplaySurfaceCreateFlagsKHR = VkFlags
#endif
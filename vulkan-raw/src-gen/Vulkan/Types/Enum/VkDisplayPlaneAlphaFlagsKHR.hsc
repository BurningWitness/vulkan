{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDisplayPlaneAlphaFlagsKHR where

import Vulkan.Types.Base



#if VK_KHR_display
type VkDisplayPlaneAlphaFlagsKHR = VkFlags
#endif
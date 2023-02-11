{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkWin32SurfaceCreateFlagsKHR where

import Vulkan.Types.Base



#if VK_KHR_win32_surface
type VkWin32SurfaceCreateFlagsKHR = VkFlags
#endif
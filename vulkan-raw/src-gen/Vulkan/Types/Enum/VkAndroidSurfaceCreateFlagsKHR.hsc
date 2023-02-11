{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkAndroidSurfaceCreateFlagsKHR where

import Vulkan.Types.Base



#if VK_KHR_android_surface
type VkAndroidSurfaceCreateFlagsKHR = VkFlags
#endif
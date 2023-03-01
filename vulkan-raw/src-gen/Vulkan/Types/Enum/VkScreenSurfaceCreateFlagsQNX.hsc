{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkScreenSurfaceCreateFlagsQNX where

import Vulkan.Types.Base



#if VK_QNX_screen_surface
type VkScreenSurfaceCreateFlagsQNX = VkFlags
#endif
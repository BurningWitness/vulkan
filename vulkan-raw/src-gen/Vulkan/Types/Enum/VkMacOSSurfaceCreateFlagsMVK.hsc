{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkMacOSSurfaceCreateFlagsMVK where

import Vulkan.Types.Base



#if VK_MVK_macos_surface
type VkMacOSSurfaceCreateFlagsMVK = VkFlags
#endif
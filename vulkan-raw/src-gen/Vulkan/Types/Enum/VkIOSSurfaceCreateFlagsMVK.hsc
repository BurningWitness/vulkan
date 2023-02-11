{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkIOSSurfaceCreateFlagsMVK where

import Vulkan.Types.Base



#if VK_MVK_ios_surface
type VkIOSSurfaceCreateFlagsMVK = VkFlags
#endif
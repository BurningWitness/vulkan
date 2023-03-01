{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkHeadlessSurfaceCreateFlagsEXT where

import Vulkan.Types.Base



#if VK_EXT_headless_surface
type VkHeadlessSurfaceCreateFlagsEXT = VkFlags
#endif
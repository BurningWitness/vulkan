{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDebugUtilsMessageTypeFlagsEXT where

import Vulkan.Types.Base



#if VK_EXT_debug_utils
type VkDebugUtilsMessageTypeFlagsEXT = VkFlags
#endif
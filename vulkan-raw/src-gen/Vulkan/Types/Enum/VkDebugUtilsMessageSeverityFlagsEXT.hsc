{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDebugUtilsMessageSeverityFlagsEXT where

import Vulkan.Types.Base



#if VK_EXT_debug_utils
type VkDebugUtilsMessageSeverityFlagsEXT = VkFlags
#endif
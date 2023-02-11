{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDebugUtilsMessengerCreateFlagsEXT where

import Vulkan.Types.Base



#if VK_EXT_debug_utils
type VkDebugUtilsMessengerCreateFlagsEXT = VkFlags
#endif
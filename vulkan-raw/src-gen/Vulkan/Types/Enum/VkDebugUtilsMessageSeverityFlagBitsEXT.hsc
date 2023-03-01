{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDebugUtilsMessageSeverityFlagBitsEXT where

import Vulkan.Types.Base



#if VK_EXT_debug_utils
type VkDebugUtilsMessageSeverityFlagBitsEXT = VkFlags
#endif

#if VK_EXT_debug_utils
pattern VK_DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT = 1
#endif

#if VK_EXT_debug_utils
pattern VK_DEBUG_UTILS_MESSAGE_SEVERITY_INFO_BIT_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_UTILS_MESSAGE_SEVERITY_INFO_BIT_EXT = 16
#endif

#if VK_EXT_debug_utils
pattern VK_DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT = 256
#endif

#if VK_EXT_debug_utils
pattern VK_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT = 4096
#endif
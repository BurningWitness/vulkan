{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDebugUtilsMessageTypeFlagBitsEXT where

import Vulkan.Types.Base



#if VK_EXT_debug_utils
type VkDebugUtilsMessageTypeFlagBitsEXT = VkFlags
#endif

#if VK_EXT_debug_utils
pattern VK_DEBUG_UTILS_MESSAGE_TYPE_GENERAL_BIT_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_UTILS_MESSAGE_TYPE_GENERAL_BIT_EXT = 1
#endif

#if VK_EXT_debug_utils
pattern VK_DEBUG_UTILS_MESSAGE_TYPE_VALIDATION_BIT_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_UTILS_MESSAGE_TYPE_VALIDATION_BIT_EXT = 2
#endif

#if VK_EXT_debug_utils
pattern VK_DEBUG_UTILS_MESSAGE_TYPE_PERFORMANCE_BIT_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_UTILS_MESSAGE_TYPE_PERFORMANCE_BIT_EXT = 4
#endif

#if VK_EXT_device_address_binding_report
pattern VK_DEBUG_UTILS_MESSAGE_TYPE_DEVICE_ADDRESS_BINDING_BIT_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_UTILS_MESSAGE_TYPE_DEVICE_ADDRESS_BINDING_BIT_EXT = 8
#endif
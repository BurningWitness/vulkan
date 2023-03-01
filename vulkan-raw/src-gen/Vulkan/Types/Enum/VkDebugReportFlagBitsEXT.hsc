{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDebugReportFlagBitsEXT where

import Vulkan.Types.Base



#if VK_EXT_debug_report
type VkDebugReportFlagBitsEXT = VkFlags
#endif

#if VK_EXT_debug_report
pattern VK_DEBUG_REPORT_INFORMATION_BIT_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_INFORMATION_BIT_EXT = 1
#endif

#if VK_EXT_debug_report
pattern VK_DEBUG_REPORT_WARNING_BIT_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_WARNING_BIT_EXT = 2
#endif

#if VK_EXT_debug_report
pattern VK_DEBUG_REPORT_PERFORMANCE_WARNING_BIT_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_PERFORMANCE_WARNING_BIT_EXT = 4
#endif

#if VK_EXT_debug_report
pattern VK_DEBUG_REPORT_ERROR_BIT_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_ERROR_BIT_EXT = 8
#endif

#if VK_EXT_debug_report
pattern VK_DEBUG_REPORT_DEBUG_BIT_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_DEBUG_BIT_EXT = 16
#endif
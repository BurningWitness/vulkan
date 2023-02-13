{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkToolPurposeFlagBits where

import Vulkan.Types.Base



#if VK_VERSION_1_3
type VkToolPurposeFlagBits = VkFlags
#endif

#if VK_VERSION_1_3
pattern VK_TOOL_PURPOSE_VALIDATION_BIT :: (Eq a, Num a) => a
pattern VK_TOOL_PURPOSE_VALIDATION_BIT = 1
#endif

#if VK_VERSION_1_3
pattern VK_TOOL_PURPOSE_VALIDATION_BIT_EXT :: (Eq a, Num a) => a
pattern VK_TOOL_PURPOSE_VALIDATION_BIT_EXT = 1
#endif

#if VK_VERSION_1_3
pattern VK_TOOL_PURPOSE_PROFILING_BIT :: (Eq a, Num a) => a
pattern VK_TOOL_PURPOSE_PROFILING_BIT = 2
#endif

#if VK_VERSION_1_3
pattern VK_TOOL_PURPOSE_PROFILING_BIT_EXT :: (Eq a, Num a) => a
pattern VK_TOOL_PURPOSE_PROFILING_BIT_EXT = 2
#endif

#if VK_VERSION_1_3
pattern VK_TOOL_PURPOSE_TRACING_BIT :: (Eq a, Num a) => a
pattern VK_TOOL_PURPOSE_TRACING_BIT = 4
#endif

#if VK_VERSION_1_3
pattern VK_TOOL_PURPOSE_TRACING_BIT_EXT :: (Eq a, Num a) => a
pattern VK_TOOL_PURPOSE_TRACING_BIT_EXT = 4
#endif

#if VK_VERSION_1_3
pattern VK_TOOL_PURPOSE_ADDITIONAL_FEATURES_BIT :: (Eq a, Num a) => a
pattern VK_TOOL_PURPOSE_ADDITIONAL_FEATURES_BIT = 8
#endif

#if VK_VERSION_1_3
pattern VK_TOOL_PURPOSE_ADDITIONAL_FEATURES_BIT_EXT :: (Eq a, Num a) => a
pattern VK_TOOL_PURPOSE_ADDITIONAL_FEATURES_BIT_EXT = 8
#endif

#if VK_VERSION_1_3
pattern VK_TOOL_PURPOSE_MODIFYING_FEATURES_BIT :: (Eq a, Num a) => a
pattern VK_TOOL_PURPOSE_MODIFYING_FEATURES_BIT = 16
#endif

#if VK_VERSION_1_3
pattern VK_TOOL_PURPOSE_MODIFYING_FEATURES_BIT_EXT :: (Eq a, Num a) => a
pattern VK_TOOL_PURPOSE_MODIFYING_FEATURES_BIT_EXT = 16
#endif

#if VK_EXT_tooling_info && VK_EXT_debug_report && VK_EXT_debug_utils
pattern VK_TOOL_PURPOSE_DEBUG_REPORTING_BIT_EXT :: (Eq a, Num a) => a
pattern VK_TOOL_PURPOSE_DEBUG_REPORTING_BIT_EXT = 32
#endif

#if VK_EXT_tooling_info && VK_EXT_debug_marker && VK_EXT_debug_utils
pattern VK_TOOL_PURPOSE_DEBUG_MARKERS_BIT_EXT :: (Eq a, Num a) => a
pattern VK_TOOL_PURPOSE_DEBUG_MARKERS_BIT_EXT = 64
#endif
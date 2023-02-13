{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPerformanceCounterScopeKHR where

import Data.Int



#if VK_KHR_performance_query
type VkPerformanceCounterScopeKHR = #{type int}
#endif

#if VK_KHR_performance_query
pattern VK_PERFORMANCE_COUNTER_SCOPE_COMMAND_BUFFER_KHR :: (Eq a, Num a) => a
pattern VK_PERFORMANCE_COUNTER_SCOPE_COMMAND_BUFFER_KHR = 0
#endif

#if VK_KHR_performance_query
pattern VK_PERFORMANCE_COUNTER_SCOPE_RENDER_PASS_KHR :: (Eq a, Num a) => a
pattern VK_PERFORMANCE_COUNTER_SCOPE_RENDER_PASS_KHR = 1
#endif

#if VK_KHR_performance_query
pattern VK_PERFORMANCE_COUNTER_SCOPE_COMMAND_KHR :: (Eq a, Num a) => a
pattern VK_PERFORMANCE_COUNTER_SCOPE_COMMAND_KHR = 2
#endif

#if VK_KHR_performance_query
-- | Backwards-compatible alias containing a typo
pattern VK_QUERY_SCOPE_COMMAND_BUFFER_KHR :: (Eq a, Num a) => a
pattern VK_QUERY_SCOPE_COMMAND_BUFFER_KHR = 0
#endif

#if VK_KHR_performance_query
-- | Backwards-compatible alias containing a typo
pattern VK_QUERY_SCOPE_RENDER_PASS_KHR :: (Eq a, Num a) => a
pattern VK_QUERY_SCOPE_RENDER_PASS_KHR = 1
#endif

#if VK_KHR_performance_query
-- | Backwards-compatible alias containing a typo
pattern VK_QUERY_SCOPE_COMMAND_KHR :: (Eq a, Num a) => a
pattern VK_QUERY_SCOPE_COMMAND_KHR = 2
#endif
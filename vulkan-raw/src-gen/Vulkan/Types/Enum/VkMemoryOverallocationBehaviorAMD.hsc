{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkMemoryOverallocationBehaviorAMD where

import Data.Int



#if VK_AMD_memory_overallocation_behavior
type VkMemoryOverallocationBehaviorAMD = #{type int}
#endif

#if VK_AMD_memory_overallocation_behavior
pattern VK_MEMORY_OVERALLOCATION_BEHAVIOR_DEFAULT_AMD :: (Eq a, Num a) => a
pattern VK_MEMORY_OVERALLOCATION_BEHAVIOR_DEFAULT_AMD = 0
#endif

#if VK_AMD_memory_overallocation_behavior
pattern VK_MEMORY_OVERALLOCATION_BEHAVIOR_ALLOWED_AMD :: (Eq a, Num a) => a
pattern VK_MEMORY_OVERALLOCATION_BEHAVIOR_ALLOWED_AMD = 1
#endif

#if VK_AMD_memory_overallocation_behavior
pattern VK_MEMORY_OVERALLOCATION_BEHAVIOR_DISALLOWED_AMD :: (Eq a, Num a) => a
pattern VK_MEMORY_OVERALLOCATION_BEHAVIOR_DISALLOWED_AMD = 2
#endif
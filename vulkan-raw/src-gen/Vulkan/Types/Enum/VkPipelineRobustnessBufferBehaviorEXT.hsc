{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPipelineRobustnessBufferBehaviorEXT where

import Data.Int



#if VK_EXT_pipeline_robustness
type VkPipelineRobustnessBufferBehaviorEXT = #{type int}
#endif

#if VK_EXT_pipeline_robustness
pattern VK_PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_DEVICE_DEFAULT_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_DEVICE_DEFAULT_EXT = 0
#endif

#if VK_EXT_pipeline_robustness
pattern VK_PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_DISABLED_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_DISABLED_EXT = 1
#endif

#if VK_EXT_pipeline_robustness
pattern VK_PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_ROBUST_BUFFER_ACCESS_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_ROBUST_BUFFER_ACCESS_EXT = 2
#endif

#if VK_EXT_pipeline_robustness
pattern VK_PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_ROBUST_BUFFER_ACCESS_2_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_ROBUST_BUFFER_ACCESS_2_EXT = 3
#endif
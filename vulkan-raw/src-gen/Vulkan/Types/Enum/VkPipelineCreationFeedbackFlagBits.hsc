{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPipelineCreationFeedbackFlagBits where

import Vulkan.Types.Base



#if VK_VERSION_1_3
type VkPipelineCreationFeedbackFlagBits = VkFlags
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_CREATION_FEEDBACK_VALID_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATION_FEEDBACK_VALID_BIT = 1
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_CREATION_FEEDBACK_VALID_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATION_FEEDBACK_VALID_BIT_EXT = VK_PIPELINE_CREATION_FEEDBACK_VALID_BIT
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_CREATION_FEEDBACK_APPLICATION_PIPELINE_CACHE_HIT_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATION_FEEDBACK_APPLICATION_PIPELINE_CACHE_HIT_BIT = 2
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_CREATION_FEEDBACK_APPLICATION_PIPELINE_CACHE_HIT_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATION_FEEDBACK_APPLICATION_PIPELINE_CACHE_HIT_BIT_EXT = VK_PIPELINE_CREATION_FEEDBACK_APPLICATION_PIPELINE_CACHE_HIT_BIT
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_CREATION_FEEDBACK_BASE_PIPELINE_ACCELERATION_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATION_FEEDBACK_BASE_PIPELINE_ACCELERATION_BIT = 4
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_CREATION_FEEDBACK_BASE_PIPELINE_ACCELERATION_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATION_FEEDBACK_BASE_PIPELINE_ACCELERATION_BIT_EXT = VK_PIPELINE_CREATION_FEEDBACK_BASE_PIPELINE_ACCELERATION_BIT
#endif
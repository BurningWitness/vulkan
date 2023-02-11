{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPipelineCacheCreateFlagBits where

import Vulkan.Types.Base



#if VK_EXT_pipeline_creation_cache_control
type VkPipelineCacheCreateFlagBits = VkFlags
#endif

#if VK_VERSION_1_3 || (VK_EXT_pipeline_creation_cache_control)
pattern VK_PIPELINE_CACHE_CREATE_EXTERNALLY_SYNCHRONIZED_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_CACHE_CREATE_EXTERNALLY_SYNCHRONIZED_BIT = 1
#endif

#if VK_EXT_pipeline_creation_cache_control
pattern VK_PIPELINE_CACHE_CREATE_EXTERNALLY_SYNCHRONIZED_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_CACHE_CREATE_EXTERNALLY_SYNCHRONIZED_BIT_EXT = VK_PIPELINE_CACHE_CREATE_EXTERNALLY_SYNCHRONIZED_BIT
#endif
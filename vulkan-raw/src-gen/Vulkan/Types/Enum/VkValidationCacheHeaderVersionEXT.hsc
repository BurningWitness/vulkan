{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkValidationCacheHeaderVersionEXT where

import Data.Int



#if VK_EXT_validation_cache
type VkValidationCacheHeaderVersionEXT = #{type int}
#endif

#if VK_EXT_validation_cache
pattern VK_VALIDATION_CACHE_HEADER_VERSION_ONE_EXT :: (Eq a, Num a) => a
pattern VK_VALIDATION_CACHE_HEADER_VERSION_ONE_EXT = 1
#endif
{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkValidationCheckEXT where

import Data.Int



#if VK_EXT_validation_flags
type VkValidationCheckEXT = #{type int}
#endif

#if VK_EXT_validation_flags
pattern VK_VALIDATION_CHECK_ALL_EXT :: (Eq a, Num a) => a
pattern VK_VALIDATION_CHECK_ALL_EXT = 0
#endif

#if VK_EXT_validation_flags
pattern VK_VALIDATION_CHECK_SHADERS_EXT :: (Eq a, Num a) => a
pattern VK_VALIDATION_CHECK_SHADERS_EXT = 1
#endif
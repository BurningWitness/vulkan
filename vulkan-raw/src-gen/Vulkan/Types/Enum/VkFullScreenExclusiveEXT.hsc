{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkFullScreenExclusiveEXT where

import Data.Int



#if VK_EXT_full_screen_exclusive
type VkFullScreenExclusiveEXT = #{type int}
#endif

#if VK_EXT_full_screen_exclusive
pattern VK_FULL_SCREEN_EXCLUSIVE_DEFAULT_EXT :: (Eq a, Num a) => a
pattern VK_FULL_SCREEN_EXCLUSIVE_DEFAULT_EXT = 0
#endif

#if VK_EXT_full_screen_exclusive
pattern VK_FULL_SCREEN_EXCLUSIVE_ALLOWED_EXT :: (Eq a, Num a) => a
pattern VK_FULL_SCREEN_EXCLUSIVE_ALLOWED_EXT = 1
#endif

#if VK_EXT_full_screen_exclusive
pattern VK_FULL_SCREEN_EXCLUSIVE_DISALLOWED_EXT :: (Eq a, Num a) => a
pattern VK_FULL_SCREEN_EXCLUSIVE_DISALLOWED_EXT = 2
#endif

#if VK_EXT_full_screen_exclusive
pattern VK_FULL_SCREEN_EXCLUSIVE_APPLICATION_CONTROLLED_EXT :: (Eq a, Num a) => a
pattern VK_FULL_SCREEN_EXCLUSIVE_APPLICATION_CONTROLLED_EXT = 3
#endif
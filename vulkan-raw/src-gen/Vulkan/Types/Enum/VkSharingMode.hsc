{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSharingMode where

import Data.Int



type VkSharingMode = #{type int}

pattern VK_SHARING_MODE_EXCLUSIVE :: (Eq a, Num a) => a
pattern VK_SHARING_MODE_EXCLUSIVE = 0

pattern VK_SHARING_MODE_CONCURRENT :: (Eq a, Num a) => a
pattern VK_SHARING_MODE_CONCURRENT = 1
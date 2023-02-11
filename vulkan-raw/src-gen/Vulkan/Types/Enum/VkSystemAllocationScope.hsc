{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSystemAllocationScope where

import Data.Int



type VkSystemAllocationScope = #{type int}

pattern VK_SYSTEM_ALLOCATION_SCOPE_COMMAND :: (Eq a, Num a) => a
pattern VK_SYSTEM_ALLOCATION_SCOPE_COMMAND = 0

pattern VK_SYSTEM_ALLOCATION_SCOPE_OBJECT :: (Eq a, Num a) => a
pattern VK_SYSTEM_ALLOCATION_SCOPE_OBJECT = 1

pattern VK_SYSTEM_ALLOCATION_SCOPE_CACHE :: (Eq a, Num a) => a
pattern VK_SYSTEM_ALLOCATION_SCOPE_CACHE = 2

pattern VK_SYSTEM_ALLOCATION_SCOPE_DEVICE :: (Eq a, Num a) => a
pattern VK_SYSTEM_ALLOCATION_SCOPE_DEVICE = 3

pattern VK_SYSTEM_ALLOCATION_SCOPE_INSTANCE :: (Eq a, Num a) => a
pattern VK_SYSTEM_ALLOCATION_SCOPE_INSTANCE = 4
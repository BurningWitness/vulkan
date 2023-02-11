{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkInternalAllocationType where

import Data.Int



type VkInternalAllocationType = #{type int}

pattern VK_INTERNAL_ALLOCATION_TYPE_EXECUTABLE :: (Eq a, Num a) => a
pattern VK_INTERNAL_ALLOCATION_TYPE_EXECUTABLE = 0
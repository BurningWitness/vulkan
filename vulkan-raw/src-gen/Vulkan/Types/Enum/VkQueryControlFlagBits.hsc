{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkQueryControlFlagBits where

import Vulkan.Types.Base



type VkQueryControlFlagBits = VkFlags

-- | Require precise results to be collected by the query
pattern VK_QUERY_CONTROL_PRECISE_BIT :: (Eq a, Num a) => a
pattern VK_QUERY_CONTROL_PRECISE_BIT = 1
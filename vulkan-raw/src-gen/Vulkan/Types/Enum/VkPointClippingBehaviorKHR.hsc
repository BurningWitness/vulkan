{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPointClippingBehaviorKHR where

import Data.Int



#if VK_KHR_maintenance2
type VkPointClippingBehaviorKHR = #{type int}
#endif
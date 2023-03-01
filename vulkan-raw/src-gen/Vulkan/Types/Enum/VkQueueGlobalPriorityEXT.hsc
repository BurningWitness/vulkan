{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkQueueGlobalPriorityEXT where

import Data.Int



#if VK_EXT_global_priority
type VkQueueGlobalPriorityEXT = #{type int}
#endif
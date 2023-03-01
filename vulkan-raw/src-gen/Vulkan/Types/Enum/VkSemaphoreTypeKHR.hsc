{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSemaphoreTypeKHR where

import Data.Int



#if VK_KHR_timeline_semaphore
type VkSemaphoreTypeKHR = #{type int}
#endif
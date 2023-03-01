{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDeviceQueueCreateFlagBits where

import Vulkan.Types.Base



#if VK_VERSION_1_1
type VkDeviceQueueCreateFlagBits = VkFlags
#endif

#if VK_VERSION_1_1
-- | Queue is a protected-capable device queue
pattern VK_DEVICE_QUEUE_CREATE_PROTECTED_BIT :: (Eq a, Num a) => a
pattern VK_DEVICE_QUEUE_CREATE_PROTECTED_BIT = 1
#endif
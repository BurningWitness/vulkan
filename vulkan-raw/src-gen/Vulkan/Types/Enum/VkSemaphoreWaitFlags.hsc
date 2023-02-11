{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSemaphoreWaitFlags where

import Vulkan.Types.Base



#if VK_VERSION_1_2
type VkSemaphoreWaitFlags = VkFlags
#endif
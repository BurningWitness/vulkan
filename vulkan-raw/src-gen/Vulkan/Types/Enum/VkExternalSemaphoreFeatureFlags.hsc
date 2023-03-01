{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkExternalSemaphoreFeatureFlags where

import Vulkan.Types.Base



#if VK_VERSION_1_1
type VkExternalSemaphoreFeatureFlags = VkFlags
#endif
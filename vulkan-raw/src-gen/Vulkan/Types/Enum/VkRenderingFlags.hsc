{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkRenderingFlags where

import Vulkan.Types.Base



#if VK_VERSION_1_3
type VkRenderingFlags = VkFlags
#endif
{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkRenderingFlagsKHR where

import Vulkan.Types.Base



#if VK_KHR_dynamic_rendering
type VkRenderingFlagsKHR = VkFlags
#endif
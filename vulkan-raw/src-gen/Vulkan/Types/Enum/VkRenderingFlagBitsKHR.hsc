{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkRenderingFlagBitsKHR where

import Vulkan.Types.Base



#if VK_KHR_dynamic_rendering
type VkRenderingFlagBitsKHR = VkFlags
#endif
{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkCompositeAlphaFlagsKHR where

import Vulkan.Types.Base



#if VK_KHR_surface
type VkCompositeAlphaFlagsKHR = VkFlags
#endif
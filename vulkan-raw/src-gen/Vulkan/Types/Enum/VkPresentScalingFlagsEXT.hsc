{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPresentScalingFlagsEXT where

import Vulkan.Types.Base



#if VK_EXT_surface_maintenance1
type VkPresentScalingFlagsEXT = VkFlags
#endif
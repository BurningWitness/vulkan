{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkGeometryFlagsKHR where

import Vulkan.Types.Base



#if VK_KHR_acceleration_structure
type VkGeometryFlagsKHR = VkFlags
#endif
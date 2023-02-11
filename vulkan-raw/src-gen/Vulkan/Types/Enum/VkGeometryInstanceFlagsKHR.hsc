{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkGeometryInstanceFlagsKHR where

import Vulkan.Types.Base



#if VK_KHR_acceleration_structure
type VkGeometryInstanceFlagsKHR = VkFlags
#endif
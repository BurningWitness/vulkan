{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkResolveModeFlagsKHR where

import Data.Int
import Vulkan.Types.Enum.VkResolveModeFlags



#if VK_KHR_depth_stencil_resolve
type VkResolveModeFlagsKHR = VkResolveModeFlags
#endif
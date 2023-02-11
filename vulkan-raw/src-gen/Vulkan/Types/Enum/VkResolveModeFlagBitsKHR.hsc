{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkResolveModeFlagBitsKHR where

import Data.Int
import Vulkan.Types.Enum.VkResolveModeFlagBits



#if VK_KHR_depth_stencil_resolve
type VkResolveModeFlagBitsKHR = VkResolveModeFlagBits
#endif
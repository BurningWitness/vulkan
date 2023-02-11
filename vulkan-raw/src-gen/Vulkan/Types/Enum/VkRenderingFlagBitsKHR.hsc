{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkRenderingFlagBitsKHR where

import Data.Int
import Vulkan.Types.Enum.VkRenderingFlagBits



#if VK_KHR_dynamic_rendering
type VkRenderingFlagBitsKHR = VkRenderingFlagBits
#endif
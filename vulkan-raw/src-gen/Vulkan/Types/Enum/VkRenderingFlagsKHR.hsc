{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkRenderingFlagsKHR where

import Data.Int
import Vulkan.Types.Enum.VkRenderingFlags



#if VK_KHR_dynamic_rendering
type VkRenderingFlagsKHR = VkRenderingFlags
#endif
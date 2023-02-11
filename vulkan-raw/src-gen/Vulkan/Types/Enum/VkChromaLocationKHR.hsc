{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkChromaLocationKHR where

import Data.Int
import Vulkan.Types.Enum.VkChromaLocation



#if VK_KHR_sampler_ycbcr_conversion
type VkChromaLocationKHR = VkChromaLocation
#endif
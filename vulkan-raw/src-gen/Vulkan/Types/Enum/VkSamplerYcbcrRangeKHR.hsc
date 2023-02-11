{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSamplerYcbcrRangeKHR where

import Data.Int
import Vulkan.Types.Enum.VkSamplerYcbcrRange



#if VK_KHR_sampler_ycbcr_conversion
type VkSamplerYcbcrRangeKHR = VkSamplerYcbcrRange
#endif
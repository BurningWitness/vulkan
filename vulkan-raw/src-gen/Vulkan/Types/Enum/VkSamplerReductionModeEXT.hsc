{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSamplerReductionModeEXT where

import Data.Int
import Vulkan.Types.Enum.VkSamplerReductionMode



#if VK_EXT_sampler_filter_minmax
type VkSamplerReductionModeEXT = VkSamplerReductionMode
#endif
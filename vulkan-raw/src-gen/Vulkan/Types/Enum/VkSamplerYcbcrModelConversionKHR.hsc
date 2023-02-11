{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSamplerYcbcrModelConversionKHR where

import Data.Int
import Vulkan.Types.Enum.VkSamplerYcbcrModelConversion



#if VK_KHR_sampler_ycbcr_conversion
type VkSamplerYcbcrModelConversionKHR = VkSamplerYcbcrModelConversion
#endif
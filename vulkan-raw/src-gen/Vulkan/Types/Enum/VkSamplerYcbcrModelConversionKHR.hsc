{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSamplerYcbcrModelConversionKHR where

import Data.Int



#if VK_KHR_sampler_ycbcr_conversion
type VkSamplerYcbcrModelConversionKHR = #{type int}
#endif
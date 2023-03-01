{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSamplerYcbcrRangeKHR where

import Data.Int



#if VK_KHR_sampler_ycbcr_conversion
type VkSamplerYcbcrRangeKHR = #{type int}
#endif
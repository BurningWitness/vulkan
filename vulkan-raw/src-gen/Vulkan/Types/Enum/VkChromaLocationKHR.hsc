{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkChromaLocationKHR where

import Data.Int



#if VK_KHR_sampler_ycbcr_conversion
type VkChromaLocationKHR = #{type int}
#endif
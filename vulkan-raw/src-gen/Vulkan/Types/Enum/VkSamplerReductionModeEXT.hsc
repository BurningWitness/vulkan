{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSamplerReductionModeEXT where

import Data.Int



#if VK_EXT_sampler_filter_minmax
type VkSamplerReductionModeEXT = #{type int}
#endif
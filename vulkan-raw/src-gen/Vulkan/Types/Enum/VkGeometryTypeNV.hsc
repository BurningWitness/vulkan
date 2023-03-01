{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkGeometryTypeNV where

import Data.Int



#if VK_NV_ray_tracing
type VkGeometryTypeNV = #{type int}
#endif
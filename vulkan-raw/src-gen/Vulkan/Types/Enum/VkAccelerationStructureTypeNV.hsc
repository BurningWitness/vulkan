{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkAccelerationStructureTypeNV where

import Data.Int



#if VK_NV_ray_tracing
type VkAccelerationStructureTypeNV = #{type int}
#endif
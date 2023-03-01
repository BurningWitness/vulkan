{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkCopyAccelerationStructureModeNV where

import Data.Int



#if VK_NV_ray_tracing
type VkCopyAccelerationStructureModeNV = #{type int}
#endif
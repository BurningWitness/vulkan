{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDirectDriverLoadingModeLUNARG where

import Data.Int



#if VK_LUNARG_direct_driver_loading
type VkDirectDriverLoadingModeLUNARG = #{type int}
#endif

#if VK_LUNARG_direct_driver_loading
pattern VK_DIRECT_DRIVER_LOADING_MODE_EXCLUSIVE_LUNARG :: (Eq a, Num a) => a
pattern VK_DIRECT_DRIVER_LOADING_MODE_EXCLUSIVE_LUNARG = 0
#endif

#if VK_LUNARG_direct_driver_loading
pattern VK_DIRECT_DRIVER_LOADING_MODE_INCLUSIVE_LUNARG :: (Eq a, Num a) => a
pattern VK_DIRECT_DRIVER_LOADING_MODE_INCLUSIVE_LUNARG = 1
#endif
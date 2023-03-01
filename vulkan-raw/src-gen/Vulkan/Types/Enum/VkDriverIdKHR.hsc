{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDriverIdKHR where

import Data.Int



#if VK_KHR_driver_properties
type VkDriverIdKHR = #{type int}
#endif
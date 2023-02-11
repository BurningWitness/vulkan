{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDriverIdKHR where

import Data.Int
import Vulkan.Types.Enum.VkDriverId



#if VK_KHR_driver_properties
type VkDriverIdKHR = VkDriverId
#endif
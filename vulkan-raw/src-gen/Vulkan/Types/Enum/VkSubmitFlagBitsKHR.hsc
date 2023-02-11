{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSubmitFlagBitsKHR where

import Data.Int
import Vulkan.Types.Enum.VkSubmitFlagBits



#if VK_KHR_synchronization2
type VkSubmitFlagBitsKHR = VkSubmitFlagBits
#endif
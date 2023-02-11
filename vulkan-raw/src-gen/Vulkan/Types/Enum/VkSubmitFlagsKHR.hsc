{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSubmitFlagsKHR where

import Data.Int
import Vulkan.Types.Enum.VkSubmitFlags



#if VK_KHR_synchronization2
type VkSubmitFlagsKHR = VkSubmitFlags
#endif
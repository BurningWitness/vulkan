{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkAccessFlags2KHR where

import Data.Int
import Vulkan.Types.Enum.VkAccessFlags2



#if VK_KHR_synchronization2
type VkAccessFlags2KHR = VkAccessFlags2
#endif
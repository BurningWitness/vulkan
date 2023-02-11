{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkFenceImportFlagBitsKHR where

import Data.Int
import Vulkan.Types.Enum.VkFenceImportFlagBits



#if VK_KHR_external_fence
type VkFenceImportFlagBitsKHR = VkFenceImportFlagBits
#endif
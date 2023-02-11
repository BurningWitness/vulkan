{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkFenceImportFlagsKHR where

import Data.Int
import Vulkan.Types.Enum.VkFenceImportFlags



#if VK_KHR_external_fence
type VkFenceImportFlagsKHR = VkFenceImportFlags
#endif
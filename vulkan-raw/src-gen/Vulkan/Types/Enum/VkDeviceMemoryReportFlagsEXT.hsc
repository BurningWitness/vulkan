{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDeviceMemoryReportFlagsEXT where

import Vulkan.Types.Base



#if VK_EXT_device_memory_report
type VkDeviceMemoryReportFlagsEXT = VkFlags
#endif
{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDebugReportFlagsEXT where

import Vulkan.Types.Base



#if VK_EXT_debug_report
type VkDebugReportFlagsEXT = VkFlags
#endif
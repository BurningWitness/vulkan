{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDeviceDiagnosticsConfigFlagsNV where

import Vulkan.Types.Base



#if VK_NV_device_diagnostics_config
type VkDeviceDiagnosticsConfigFlagsNV = VkFlags
#endif
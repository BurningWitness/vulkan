{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDeviceDiagnosticsConfigFlagBitsNV where

import Vulkan.Types.Base



#if VK_NV_device_diagnostics_config
type VkDeviceDiagnosticsConfigFlagBitsNV = VkFlags
#endif

#if VK_NV_device_diagnostics_config
pattern VK_DEVICE_DIAGNOSTICS_CONFIG_ENABLE_SHADER_DEBUG_INFO_BIT_NV :: (Eq a, Num a) => a
pattern VK_DEVICE_DIAGNOSTICS_CONFIG_ENABLE_SHADER_DEBUG_INFO_BIT_NV = 1
#endif

#if VK_NV_device_diagnostics_config
pattern VK_DEVICE_DIAGNOSTICS_CONFIG_ENABLE_RESOURCE_TRACKING_BIT_NV :: (Eq a, Num a) => a
pattern VK_DEVICE_DIAGNOSTICS_CONFIG_ENABLE_RESOURCE_TRACKING_BIT_NV = 2
#endif

#if VK_NV_device_diagnostics_config
pattern VK_DEVICE_DIAGNOSTICS_CONFIG_ENABLE_AUTOMATIC_CHECKPOINTS_BIT_NV :: (Eq a, Num a) => a
pattern VK_DEVICE_DIAGNOSTICS_CONFIG_ENABLE_AUTOMATIC_CHECKPOINTS_BIT_NV = 4
#endif

#if VK_NV_device_diagnostics_config
pattern VK_DEVICE_DIAGNOSTICS_CONFIG_ENABLE_SHADER_ERROR_REPORTING_BIT_NV :: (Eq a, Num a) => a
pattern VK_DEVICE_DIAGNOSTICS_CONFIG_ENABLE_SHADER_ERROR_REPORTING_BIT_NV = 8
#endif
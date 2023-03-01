{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_device_diagnostics_config

module Vulkan.Ext.VK_NV_device_diagnostics_config
  ( pattern VK_NV_DEVICE_DIAGNOSTICS_CONFIG_SPEC_VERSION
  , pattern VK_NV_DEVICE_DIAGNOSTICS_CONFIG_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DIAGNOSTICS_CONFIG_FEATURES_NV
  , pattern VK_STRUCTURE_TYPE_DEVICE_DIAGNOSTICS_CONFIG_CREATE_INFO_NV
  , VkPhysicalDeviceDiagnosticsConfigFeaturesNV (..)
  , VkDeviceDiagnosticsConfigCreateInfoNV (..)
  , VkDeviceDiagnosticsConfigFlagsNV
  , VkDeviceDiagnosticsConfigFlagBitsNV
  , pattern VK_DEVICE_DIAGNOSTICS_CONFIG_ENABLE_SHADER_DEBUG_INFO_BIT_NV
  , pattern VK_DEVICE_DIAGNOSTICS_CONFIG_ENABLE_RESOURCE_TRACKING_BIT_NV
  , pattern VK_DEVICE_DIAGNOSTICS_CONFIG_ENABLE_AUTOMATIC_CHECKPOINTS_BIT_NV
  , pattern VK_DEVICE_DIAGNOSTICS_CONFIG_ENABLE_SHADER_ERROR_REPORTING_BIT_NV
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkDeviceDiagnosticsConfigFlagBitsNV
import Vulkan.Types.Enum.VkDeviceDiagnosticsConfigFlagsNV
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDeviceDiagnosticsConfigCreateInfoNV
import Vulkan.Types.Struct.VkPhysicalDeviceDiagnosticsConfigFeaturesNV
import Vulkan.Types.VkFun



pattern VK_NV_DEVICE_DIAGNOSTICS_CONFIG_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_DEVICE_DIAGNOSTICS_CONFIG_SPEC_VERSION = 2

pattern VK_NV_DEVICE_DIAGNOSTICS_CONFIG_EXTENSION_NAME :: CString
pattern VK_NV_DEVICE_DIAGNOSTICS_CONFIG_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_DEVICE_DIAGNOSTICS_CONFIG_EXTENSION_NAME = Ptr ("VK_NV_device_diagnostics_config\0"##)

#else

module Vulkan.Ext.VK_NV_device_diagnostics_config where

#endif
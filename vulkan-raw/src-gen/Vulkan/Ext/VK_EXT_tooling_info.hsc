{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_tooling_info

module Vulkan.Ext.VK_EXT_tooling_info
  ( pattern VK_EXT_TOOLING_INFO_SPEC_VERSION
  , pattern VK_EXT_TOOLING_INFO_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TOOL_PROPERTIES_EXT
  , VkToolPurposeFlagBitsEXT
  , VkToolPurposeFlagsEXT
  , VkPhysicalDeviceToolPropertiesEXT
  , VkGetPhysicalDeviceToolPropertiesEXT
  , vkFunGetPhysicalDeviceToolPropertiesEXT
#if VK_EXT_debug_report
  , pattern VK_TOOL_PURPOSE_DEBUG_REPORTING_BIT_EXT
#endif
#if VK_EXT_debug_marker
  , pattern VK_TOOL_PURPOSE_DEBUG_MARKERS_BIT_EXT
#endif
#if VK_EXT_debug_utils
  , pattern VK_TOOL_PURPOSE_DEBUG_REPORTING_BIT_EXT
  , pattern VK_TOOL_PURPOSE_DEBUG_MARKERS_BIT_EXT
#endif
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkToolPurposeFlagBits
import Vulkan.Types.Enum.VkToolPurposeFlagBitsEXT
import Vulkan.Types.Enum.VkToolPurposeFlagsEXT
import Vulkan.Types.Struct.VkPhysicalDeviceToolPropertiesEXT
import Vulkan.Types.Command.VkGetPhysicalDeviceToolPropertiesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_TOOLING_INFO_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_TOOLING_INFO_SPEC_VERSION = 1

pattern VK_EXT_TOOLING_INFO_EXTENSION_NAME :: CString
pattern VK_EXT_TOOLING_INFO_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_TOOLING_INFO_EXTENSION_NAME = Ptr ("VK_EXT_tooling_info\0"##)

#else

module Vulkan.Ext.VK_EXT_tooling_info where

#endif
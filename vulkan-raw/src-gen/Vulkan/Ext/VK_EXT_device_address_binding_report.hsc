{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_device_address_binding_report

module Vulkan.Ext.VK_EXT_device_address_binding_report
  ( pattern VK_EXT_DEVICE_ADDRESS_BINDING_REPORT_SPEC_VERSION
  , pattern VK_EXT_DEVICE_ADDRESS_BINDING_REPORT_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ADDRESS_BINDING_REPORT_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_DEVICE_ADDRESS_BINDING_CALLBACK_DATA_EXT
  , pattern VK_DEBUG_UTILS_MESSAGE_TYPE_DEVICE_ADDRESS_BINDING_BIT_EXT
  , VkPhysicalDeviceAddressBindingReportFeaturesEXT (..)
  , VkDeviceAddressBindingCallbackDataEXT (..)
  , VkDeviceAddressBindingFlagsEXT
  , VkDeviceAddressBindingFlagBitsEXT
  , pattern VK_DEVICE_ADDRESS_BINDING_INTERNAL_OBJECT_BIT_EXT
  , VkDeviceAddressBindingTypeEXT
  , pattern VK_DEVICE_ADDRESS_BINDING_TYPE_BIND_EXT
  , pattern VK_DEVICE_ADDRESS_BINDING_TYPE_UNBIND_EXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkDebugUtilsMessageTypeFlagBitsEXT
import Vulkan.Types.Enum.VkDeviceAddressBindingFlagBitsEXT
import Vulkan.Types.Enum.VkDeviceAddressBindingFlagsEXT
import Vulkan.Types.Enum.VkDeviceAddressBindingTypeEXT
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDeviceAddressBindingCallbackDataEXT
import Vulkan.Types.Struct.VkPhysicalDeviceAddressBindingReportFeaturesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_DEVICE_ADDRESS_BINDING_REPORT_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_DEVICE_ADDRESS_BINDING_REPORT_SPEC_VERSION = 1

pattern VK_EXT_DEVICE_ADDRESS_BINDING_REPORT_EXTENSION_NAME :: CString
pattern VK_EXT_DEVICE_ADDRESS_BINDING_REPORT_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_DEVICE_ADDRESS_BINDING_REPORT_EXTENSION_NAME = Ptr ("VK_EXT_device_address_binding_report\0"##)

#else

module Vulkan.Ext.VK_EXT_device_address_binding_report where

#endif
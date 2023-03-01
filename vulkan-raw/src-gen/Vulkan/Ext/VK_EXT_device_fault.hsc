{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_device_fault

module Vulkan.Ext.VK_EXT_device_fault
  ( pattern VK_EXT_DEVICE_FAULT_SPEC_VERSION
  , pattern VK_EXT_DEVICE_FAULT_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FAULT_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_DEVICE_FAULT_COUNTS_EXT
  , pattern VK_STRUCTURE_TYPE_DEVICE_FAULT_INFO_EXT
  , VkPhysicalDeviceFaultFeaturesEXT (..)
  , VkDeviceFaultCountsEXT (..)
  , VkDeviceFaultInfoEXT (..)
  , VkDeviceFaultAddressInfoEXT (..)
  , VkDeviceFaultAddressTypeEXT
  , pattern VK_DEVICE_FAULT_ADDRESS_TYPE_NONE_EXT
  , pattern VK_DEVICE_FAULT_ADDRESS_TYPE_READ_INVALID_EXT
  , pattern VK_DEVICE_FAULT_ADDRESS_TYPE_WRITE_INVALID_EXT
  , pattern VK_DEVICE_FAULT_ADDRESS_TYPE_EXECUTE_INVALID_EXT
  , pattern VK_DEVICE_FAULT_ADDRESS_TYPE_INSTRUCTION_POINTER_UNKNOWN_EXT
  , pattern VK_DEVICE_FAULT_ADDRESS_TYPE_INSTRUCTION_POINTER_INVALID_EXT
  , pattern VK_DEVICE_FAULT_ADDRESS_TYPE_INSTRUCTION_POINTER_FAULT_EXT
  , VkDeviceFaultVendorInfoEXT (..)
  , VkDeviceFaultVendorBinaryHeaderVersionEXT
  , pattern VK_DEVICE_FAULT_VENDOR_BINARY_HEADER_VERSION_ONE_EXT
  , VkDeviceFaultVendorBinaryHeaderVersionOneEXT (..)
  , VkGetDeviceFaultInfoEXT
  , vkFunGetDeviceFaultInfoEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkDeviceFaultAddressTypeEXT
import Vulkan.Types.Enum.VkDeviceFaultVendorBinaryHeaderVersionEXT
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDeviceFaultAddressInfoEXT
import Vulkan.Types.Struct.VkDeviceFaultCountsEXT
import Vulkan.Types.Struct.VkDeviceFaultInfoEXT
import Vulkan.Types.Struct.VkDeviceFaultVendorBinaryHeaderVersionOneEXT
import Vulkan.Types.Struct.VkDeviceFaultVendorInfoEXT
import Vulkan.Types.Struct.VkPhysicalDeviceFaultFeaturesEXT
import Vulkan.Types.Command.VkGetDeviceFaultInfoEXT
import Vulkan.Types.VkFun



pattern VK_EXT_DEVICE_FAULT_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_DEVICE_FAULT_SPEC_VERSION = 1

pattern VK_EXT_DEVICE_FAULT_EXTENSION_NAME :: CString
pattern VK_EXT_DEVICE_FAULT_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_DEVICE_FAULT_EXTENSION_NAME = Ptr ("VK_EXT_device_fault\0"##)

#else

module Vulkan.Ext.VK_EXT_device_fault where

#endif
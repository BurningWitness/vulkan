{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_pci_bus_info

module Vulkan.Ext.VK_EXT_pci_bus_info
  ( pattern VK_EXT_PCI_BUS_INFO_SPEC_VERSION
  , pattern VK_EXT_PCI_BUS_INFO_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PCI_BUS_INFO_PROPERTIES_EXT
  , VkPhysicalDevicePCIBusInfoPropertiesEXT (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDevicePCIBusInfoPropertiesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_PCI_BUS_INFO_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_PCI_BUS_INFO_SPEC_VERSION = 2

pattern VK_EXT_PCI_BUS_INFO_EXTENSION_NAME :: CString
pattern VK_EXT_PCI_BUS_INFO_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_PCI_BUS_INFO_EXTENSION_NAME = Ptr ("VK_EXT_pci_bus_info\0"##)

#else

module Vulkan.Ext.VK_EXT_pci_bus_info where

#endif
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_maintenance3

module Vulkan.Ext.VK_KHR_maintenance3
  ( pattern VK_KHR_MAINTENANCE_3_SPEC_VERSION
  , pattern VK_KHR_MAINTENANCE_3_EXTENSION_NAME
  , pattern VK_KHR_MAINTENANCE3_SPEC_VERSION
  , pattern VK_KHR_MAINTENANCE3_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_3_PROPERTIES_KHR
  , pattern VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_SUPPORT_KHR
  , VkPhysicalDeviceMaintenance3PropertiesKHR
  , VkDescriptorSetLayoutSupportKHR
  , VkGetDescriptorSetLayoutSupportKHR
  , vkFunGetDescriptorSetLayoutSupportKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDescriptorSetLayoutSupportKHR
import Vulkan.Types.Struct.VkPhysicalDeviceMaintenance3PropertiesKHR
import Vulkan.Types.Command.VkGetDescriptorSetLayoutSupportKHR
import Vulkan.Types.VkFun



pattern VK_KHR_MAINTENANCE_3_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_MAINTENANCE_3_SPEC_VERSION = 1

pattern VK_KHR_MAINTENANCE_3_EXTENSION_NAME :: CString
pattern VK_KHR_MAINTENANCE_3_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_MAINTENANCE_3_EXTENSION_NAME = Ptr ("VK_KHR_maintenance3\0"##)

-- | Backwards-compatible alias containing a typo
pattern VK_KHR_MAINTENANCE3_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_MAINTENANCE3_SPEC_VERSION = VK_KHR_MAINTENANCE_3_SPEC_VERSION

-- | Backwards-compatible alias containing a typo
pattern VK_KHR_MAINTENANCE3_EXTENSION_NAME :: CString
pattern VK_KHR_MAINTENANCE3_EXTENSION_NAME = VK_KHR_MAINTENANCE_3_EXTENSION_NAME

#else

module Vulkan.Ext.VK_KHR_maintenance3 where

#endif
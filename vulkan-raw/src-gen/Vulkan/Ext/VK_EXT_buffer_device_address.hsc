{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_buffer_device_address

module Vulkan.Ext.VK_EXT_buffer_device_address
  ( pattern VK_EXT_BUFFER_DEVICE_ADDRESS_SPEC_VERSION
  , pattern VK_EXT_BUFFER_DEVICE_ADDRESS_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_ADDRESS_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_CREATE_INFO_EXT
  , pattern VK_BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT_EXT
  , pattern VK_BUFFER_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_EXT
  , pattern VK_ERROR_INVALID_DEVICE_ADDRESS_EXT
  , VkPhysicalDeviceBufferAddressFeaturesEXT
  , VkPhysicalDeviceBufferDeviceAddressFeaturesEXT (..)
  , VkBufferDeviceAddressInfoEXT
  , VkBufferDeviceAddressCreateInfoEXT (..)
  , VkGetBufferDeviceAddressEXT
  , vkFunGetBufferDeviceAddressEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkBufferCreateFlagBits
import Vulkan.Types.Enum.VkBufferUsageFlagBits
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkBufferDeviceAddressCreateInfoEXT
import Vulkan.Types.Struct.VkBufferDeviceAddressInfoEXT
import Vulkan.Types.Struct.VkPhysicalDeviceBufferAddressFeaturesEXT
import Vulkan.Types.Struct.VkPhysicalDeviceBufferDeviceAddressFeaturesEXT
import Vulkan.Types.Command.VkGetBufferDeviceAddressEXT
import Vulkan.Types.VkFun



pattern VK_EXT_BUFFER_DEVICE_ADDRESS_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_BUFFER_DEVICE_ADDRESS_SPEC_VERSION = 2

pattern VK_EXT_BUFFER_DEVICE_ADDRESS_EXTENSION_NAME :: CString
pattern VK_EXT_BUFFER_DEVICE_ADDRESS_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_BUFFER_DEVICE_ADDRESS_EXTENSION_NAME = Ptr ("VK_EXT_buffer_device_address\0"##)

#else

module Vulkan.Ext.VK_EXT_buffer_device_address where

#endif
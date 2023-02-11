#include <vulkan/vulkan.h>

#if VK_EXT_buffer_device_address

module Vulkan.Types.Command.VkGetBufferDeviceAddressEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBufferDeviceAddressInfo
import Vulkan.Types.Command.VkGetBufferDeviceAddress
import Vulkan.Types.VkFun



type VkGetBufferDeviceAddressEXT = VkGetBufferDeviceAddress

vkFunGetBufferDeviceAddressEXT
  :: VkFun VkGetBufferDeviceAddressEXT
vkFunGetBufferDeviceAddressEXT = vkFunGetBufferDeviceAddress


#else

module Vulkan.Types.Command.VkGetBufferDeviceAddressEXT where

#endif
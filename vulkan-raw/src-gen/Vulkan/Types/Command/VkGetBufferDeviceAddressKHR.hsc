#include <vulkan/vulkan.h>

#if VK_KHR_buffer_device_address

module Vulkan.Types.Command.VkGetBufferDeviceAddressKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBufferDeviceAddressInfo
import Vulkan.Types.Command.VkGetBufferDeviceAddress
import Vulkan.Types.VkFun



type VkGetBufferDeviceAddressKHR = VkGetBufferDeviceAddress

vkFunGetBufferDeviceAddressKHR
  :: VkFun VkGetBufferDeviceAddressKHR
vkFunGetBufferDeviceAddressKHR = vkFunGetBufferDeviceAddress


#else

module Vulkan.Types.Command.VkGetBufferDeviceAddressKHR where

#endif
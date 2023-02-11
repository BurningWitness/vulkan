#include <vulkan/vulkan.h>

#if VK_KHR_buffer_device_address

module Vulkan.Types.Command.VkGetBufferOpaqueCaptureAddressKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBufferDeviceAddressInfo
import Vulkan.Types.Command.VkGetBufferOpaqueCaptureAddress
import Vulkan.Types.VkFun



type VkGetBufferOpaqueCaptureAddressKHR = VkGetBufferOpaqueCaptureAddress

vkFunGetBufferOpaqueCaptureAddressKHR
  :: VkFun VkGetBufferOpaqueCaptureAddressKHR
vkFunGetBufferOpaqueCaptureAddressKHR = vkFunGetBufferOpaqueCaptureAddress


#else

module Vulkan.Types.Command.VkGetBufferOpaqueCaptureAddressKHR where

#endif
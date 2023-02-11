#include <vulkan/vulkan.h>

#if VK_KHR_buffer_device_address

module Vulkan.Types.Command.VkGetDeviceMemoryOpaqueCaptureAddressKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDeviceMemoryOpaqueCaptureAddressInfo
import Vulkan.Types.Command.VkGetDeviceMemoryOpaqueCaptureAddress
import Vulkan.Types.VkFun



type VkGetDeviceMemoryOpaqueCaptureAddressKHR = VkGetDeviceMemoryOpaqueCaptureAddress

vkFunGetDeviceMemoryOpaqueCaptureAddressKHR
  :: VkFun VkGetDeviceMemoryOpaqueCaptureAddressKHR
vkFunGetDeviceMemoryOpaqueCaptureAddressKHR = vkFunGetDeviceMemoryOpaqueCaptureAddress


#else

module Vulkan.Types.Command.VkGetDeviceMemoryOpaqueCaptureAddressKHR where

#endif
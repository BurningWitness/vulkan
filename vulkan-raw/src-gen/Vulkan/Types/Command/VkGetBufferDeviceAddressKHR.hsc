{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_buffer_device_address

module Vulkan.Types.Command.VkGetBufferDeviceAddressKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBufferDeviceAddressInfo
import Vulkan.Types.VkFun



type VkGetBufferDeviceAddressKHR =
          VkDevice -- ^ device
       -> Ptr VkBufferDeviceAddressInfo -- ^ pInfo
       -> IO VkDeviceAddress

vkFunGetBufferDeviceAddressKHR :: VkFun VkGetBufferDeviceAddressKHR
vkFunGetBufferDeviceAddressKHR = VkFun (Ptr ("vkGetBufferDeviceAddressKHR\0"##))

#else

module Vulkan.Types.Command.VkGetBufferDeviceAddressKHR where

#endif
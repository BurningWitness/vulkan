{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_buffer_device_address

module Vulkan.Types.Command.VkGetDeviceMemoryOpaqueCaptureAddressKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDeviceMemoryOpaqueCaptureAddressInfo
import Vulkan.Types.VkFun



type VkGetDeviceMemoryOpaqueCaptureAddressKHR =
          VkDevice -- ^ device
       -> Ptr VkDeviceMemoryOpaqueCaptureAddressInfo -- ^ pInfo
       -> IO #{type uint64_t}

vkFunGetDeviceMemoryOpaqueCaptureAddressKHR :: VkFun VkGetDeviceMemoryOpaqueCaptureAddressKHR
vkFunGetDeviceMemoryOpaqueCaptureAddressKHR = VkFun (Ptr ("vkGetDeviceMemoryOpaqueCaptureAddressKHR\0"##))

#else

module Vulkan.Types.Command.VkGetDeviceMemoryOpaqueCaptureAddressKHR where

#endif
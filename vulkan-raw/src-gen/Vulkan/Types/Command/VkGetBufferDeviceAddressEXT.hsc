{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_buffer_device_address

module Vulkan.Types.Command.VkGetBufferDeviceAddressEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBufferDeviceAddressInfo
import Vulkan.Types.VkFun



type VkGetBufferDeviceAddressEXT =
          VkDevice -- ^ device
       -> Ptr VkBufferDeviceAddressInfo -- ^ pInfo
       -> IO VkDeviceAddress

vkFunGetBufferDeviceAddressEXT :: VkFun VkGetBufferDeviceAddressEXT
vkFunGetBufferDeviceAddressEXT = VkFun (Ptr ("vkGetBufferDeviceAddressEXT\0"##))

#else

module Vulkan.Types.Command.VkGetBufferDeviceAddressEXT where

#endif
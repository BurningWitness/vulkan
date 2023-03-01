{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Command.VkGetBufferDeviceAddress where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBufferDeviceAddressInfo
import Vulkan.Types.VkFun



type VkGetBufferDeviceAddress =
          VkDevice -- ^ device
       -> Ptr VkBufferDeviceAddressInfo -- ^ pInfo
       -> IO VkDeviceAddress

vkFunGetBufferDeviceAddress :: VkFun VkGetBufferDeviceAddress
vkFunGetBufferDeviceAddress = VkFun (Ptr ("vkGetBufferDeviceAddress\0"##))

##if CORE_1_2
foreign import CALLCV "vulkan/vulkan.h vkGetBufferDeviceAddress"
  vkGetBufferDeviceAddress
    :: VkGetBufferDeviceAddress

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetBufferDeviceAddress"
  vkGetBufferDeviceAddressUnsafe
    :: VkGetBufferDeviceAddress
##endif

#else

module Vulkan.Types.Command.VkGetBufferDeviceAddress where

#endif
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Command.VkGetBufferOpaqueCaptureAddress where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBufferDeviceAddressInfo
import Vulkan.Types.VkFun



type VkGetBufferOpaqueCaptureAddress =
          VkDevice -- ^ device
       -> Ptr VkBufferDeviceAddressInfo -- ^ pInfo
       -> IO #{type uint64_t}

vkFunGetBufferOpaqueCaptureAddress :: VkFun VkGetBufferOpaqueCaptureAddress
vkFunGetBufferOpaqueCaptureAddress = VkFun (Ptr ("vkGetBufferOpaqueCaptureAddress\0"##))

##if CORE_1_2
foreign import CALLCV "vulkan/vulkan.h vkGetBufferOpaqueCaptureAddress"
  vkGetBufferOpaqueCaptureAddress
    :: VkGetBufferOpaqueCaptureAddress

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetBufferOpaqueCaptureAddress"
  vkGetBufferOpaqueCaptureAddressUnsafe
    :: VkGetBufferOpaqueCaptureAddress
##endif

#else

module Vulkan.Types.Command.VkGetBufferOpaqueCaptureAddress where

#endif
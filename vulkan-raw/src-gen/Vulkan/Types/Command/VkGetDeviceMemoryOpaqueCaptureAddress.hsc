{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Command.VkGetDeviceMemoryOpaqueCaptureAddress where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDeviceMemoryOpaqueCaptureAddressInfo
import Vulkan.Types.VkFun



type VkGetDeviceMemoryOpaqueCaptureAddress =
          VkDevice -- ^ device
       -> Ptr VkDeviceMemoryOpaqueCaptureAddressInfo -- ^ pInfo
       -> IO #{type uint64_t}

vkFunGetDeviceMemoryOpaqueCaptureAddress :: VkFun VkGetDeviceMemoryOpaqueCaptureAddress
vkFunGetDeviceMemoryOpaqueCaptureAddress = VkFun (Ptr ("vkGetDeviceMemoryOpaqueCaptureAddress\0"##))

##if CORE_1_2
foreign import CALLCV "vulkan/vulkan.h vkGetDeviceMemoryOpaqueCaptureAddress"
  vkGetDeviceMemoryOpaqueCaptureAddress
    :: VkGetDeviceMemoryOpaqueCaptureAddress

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetDeviceMemoryOpaqueCaptureAddress"
  vkGetDeviceMemoryOpaqueCaptureAddressUnsafe
    :: VkGetDeviceMemoryOpaqueCaptureAddress
##endif

#else

module Vulkan.Types.Command.VkGetDeviceMemoryOpaqueCaptureAddress where

#endif
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkDestroyDevice where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroyDevice =
          VkDevice -- ^ device
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroyDevice :: VkFun VkDestroyDevice
vkFunDestroyDevice = VkFun (Ptr ("vkDestroyDevice\0"##))

foreign import CALLCV "vulkan/vulkan.h vkDestroyDevice"
  vkDestroyDevice
    :: VkDestroyDevice

foreign import CALLCV unsafe "vulkan/vulkan.h vkDestroyDevice"
  vkDestroyDeviceUnsafe
    :: VkDestroyDevice
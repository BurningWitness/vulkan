{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCreateDevice where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkDeviceCreateInfo
import Vulkan.Types.VkFun



type VkCreateDevice =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr VkDeviceCreateInfo -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkDevice -- ^ pDevice
       -> IO VkResult

vkFunCreateDevice :: VkFun VkCreateDevice
vkFunCreateDevice = VkFun (Ptr ("vkCreateDevice\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCreateDevice"
  vkCreateDevice
    :: VkCreateDevice

foreign import CALLCV unsafe "vulkan/vulkan.h vkCreateDevice"
  vkCreateDeviceUnsafe
    :: VkCreateDevice
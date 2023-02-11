{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkGetDeviceQueue where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetDeviceQueue =
          VkDevice -- ^ device
       -> #{type uint32_t} -- ^ queueFamilyIndex
       -> #{type uint32_t} -- ^ queueIndex
       -> Ptr VkQueue -- ^ pQueue
       -> IO ()

vkFunGetDeviceQueue :: VkFun VkGetDeviceQueue
vkFunGetDeviceQueue = VkFun (Ptr ("vkGetDeviceQueue\0"##))

foreign import CALLCV "vulkan/vulkan.h vkGetDeviceQueue"
  vkGetDeviceQueue
    :: VkGetDeviceQueue

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetDeviceQueue"
  vkGetDeviceQueueUnsafe
    :: VkGetDeviceQueue
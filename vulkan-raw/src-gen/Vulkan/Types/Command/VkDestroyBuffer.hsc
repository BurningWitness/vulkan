{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkDestroyBuffer where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroyBuffer =
          VkDevice -- ^ device
       -> VkBuffer -- ^ buffer
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroyBuffer :: VkFun VkDestroyBuffer
vkFunDestroyBuffer = VkFun (Ptr ("vkDestroyBuffer\0"##))

foreign import CALLCV "vulkan/vulkan.h vkDestroyBuffer"
  vkDestroyBuffer
    :: VkDestroyBuffer

foreign import CALLCV unsafe "vulkan/vulkan.h vkDestroyBuffer"
  vkDestroyBufferUnsafe
    :: VkDestroyBuffer
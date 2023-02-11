{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkDestroyCommandPool where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroyCommandPool =
          VkDevice -- ^ device
       -> VkCommandPool -- ^ commandPool
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroyCommandPool :: VkFun VkDestroyCommandPool
vkFunDestroyCommandPool = VkFun (Ptr ("vkDestroyCommandPool\0"##))

foreign import CALLCV "vulkan/vulkan.h vkDestroyCommandPool"
  vkDestroyCommandPool
    :: VkDestroyCommandPool

foreign import CALLCV unsafe "vulkan/vulkan.h vkDestroyCommandPool"
  vkDestroyCommandPoolUnsafe
    :: VkDestroyCommandPool
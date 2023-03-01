{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkDestroyQueryPool where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroyQueryPool =
          VkDevice -- ^ device
       -> VkQueryPool -- ^ queryPool
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroyQueryPool :: VkFun VkDestroyQueryPool
vkFunDestroyQueryPool = VkFun (Ptr ("vkDestroyQueryPool\0"##))

foreign import CALLCV "vulkan/vulkan.h vkDestroyQueryPool"
  vkDestroyQueryPool
    :: VkDestroyQueryPool

foreign import CALLCV unsafe "vulkan/vulkan.h vkDestroyQueryPool"
  vkDestroyQueryPoolUnsafe
    :: VkDestroyQueryPool
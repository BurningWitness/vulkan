{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkDestroySemaphore where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroySemaphore =
          VkDevice -- ^ device
       -> VkSemaphore -- ^ semaphore
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroySemaphore :: VkFun VkDestroySemaphore
vkFunDestroySemaphore = VkFun (Ptr ("vkDestroySemaphore\0"##))

foreign import CALLCV "vulkan/vulkan.h vkDestroySemaphore"
  vkDestroySemaphore
    :: VkDestroySemaphore

foreign import CALLCV unsafe "vulkan/vulkan.h vkDestroySemaphore"
  vkDestroySemaphoreUnsafe
    :: VkDestroySemaphore
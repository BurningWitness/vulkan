{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkDestroyInstance where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroyInstance =
          VkInstance -- ^ instance
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroyInstance :: VkFun VkDestroyInstance
vkFunDestroyInstance = VkFun (Ptr ("vkDestroyInstance\0"##))

foreign import CALLCV "vulkan/vulkan.h vkDestroyInstance"
  vkDestroyInstance
    :: VkDestroyInstance

foreign import CALLCV unsafe "vulkan/vulkan.h vkDestroyInstance"
  vkDestroyInstanceUnsafe
    :: VkDestroyInstance
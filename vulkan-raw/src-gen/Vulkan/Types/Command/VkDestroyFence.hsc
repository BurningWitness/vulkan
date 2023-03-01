{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkDestroyFence where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroyFence =
          VkDevice -- ^ device
       -> VkFence -- ^ fence
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroyFence :: VkFun VkDestroyFence
vkFunDestroyFence = VkFun (Ptr ("vkDestroyFence\0"##))

foreign import CALLCV "vulkan/vulkan.h vkDestroyFence"
  vkDestroyFence
    :: VkDestroyFence

foreign import CALLCV unsafe "vulkan/vulkan.h vkDestroyFence"
  vkDestroyFenceUnsafe
    :: VkDestroyFence
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkDestroyFramebuffer where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroyFramebuffer =
          VkDevice -- ^ device
       -> VkFramebuffer -- ^ framebuffer
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroyFramebuffer :: VkFun VkDestroyFramebuffer
vkFunDestroyFramebuffer = VkFun (Ptr ("vkDestroyFramebuffer\0"##))

foreign import CALLCV "vulkan/vulkan.h vkDestroyFramebuffer"
  vkDestroyFramebuffer
    :: VkDestroyFramebuffer

foreign import CALLCV unsafe "vulkan/vulkan.h vkDestroyFramebuffer"
  vkDestroyFramebufferUnsafe
    :: VkDestroyFramebuffer
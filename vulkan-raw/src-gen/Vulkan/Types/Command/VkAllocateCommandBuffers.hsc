{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkAllocateCommandBuffers where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkCommandBufferAllocateInfo
import Vulkan.Types.VkFun



type VkAllocateCommandBuffers =
          VkDevice -- ^ device
       -> Ptr VkCommandBufferAllocateInfo -- ^ pAllocateInfo
       -> Ptr VkCommandBuffer -- ^ pCommandBuffers
       -> IO VkResult

vkFunAllocateCommandBuffers :: VkFun VkAllocateCommandBuffers
vkFunAllocateCommandBuffers = VkFun (Ptr ("vkAllocateCommandBuffers\0"##))

foreign import CALLCV "vulkan/vulkan.h vkAllocateCommandBuffers"
  vkAllocateCommandBuffers
    :: VkAllocateCommandBuffers

foreign import CALLCV unsafe "vulkan/vulkan.h vkAllocateCommandBuffers"
  vkAllocateCommandBuffersUnsafe
    :: VkAllocateCommandBuffers
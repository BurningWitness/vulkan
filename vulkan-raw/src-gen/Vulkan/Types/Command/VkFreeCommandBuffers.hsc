{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkFreeCommandBuffers where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkFreeCommandBuffers =
          VkDevice -- ^ device
       -> VkCommandPool -- ^ commandPool
       -> #{type uint32_t} -- ^ commandBufferCount
       -> Ptr VkCommandBuffer -- ^ pCommandBuffers
       -> IO ()

vkFunFreeCommandBuffers :: VkFun VkFreeCommandBuffers
vkFunFreeCommandBuffers = VkFun (Ptr ("vkFreeCommandBuffers\0"##))

foreign import CALLCV "vulkan/vulkan.h vkFreeCommandBuffers"
  vkFreeCommandBuffers
    :: VkFreeCommandBuffers

foreign import CALLCV unsafe "vulkan/vulkan.h vkFreeCommandBuffers"
  vkFreeCommandBuffersUnsafe
    :: VkFreeCommandBuffers
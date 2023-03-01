{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkBeginCommandBuffer where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkCommandBufferBeginInfo
import Vulkan.Types.VkFun



type VkBeginCommandBuffer =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkCommandBufferBeginInfo -- ^ pBeginInfo
       -> IO VkResult

vkFunBeginCommandBuffer :: VkFun VkBeginCommandBuffer
vkFunBeginCommandBuffer = VkFun (Ptr ("vkBeginCommandBuffer\0"##))

foreign import CALLCV "vulkan/vulkan.h vkBeginCommandBuffer"
  vkBeginCommandBuffer
    :: VkBeginCommandBuffer

foreign import CALLCV unsafe "vulkan/vulkan.h vkBeginCommandBuffer"
  vkBeginCommandBufferUnsafe
    :: VkBeginCommandBuffer
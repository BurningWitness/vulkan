{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkResetCommandBuffer where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkCommandBufferResetFlags
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkResetCommandBuffer =
          VkCommandBuffer -- ^ commandBuffer
       -> VkCommandBufferResetFlags -- ^ flags
       -> IO VkResult

vkFunResetCommandBuffer :: VkFun VkResetCommandBuffer
vkFunResetCommandBuffer = VkFun (Ptr ("vkResetCommandBuffer\0"##))

foreign import CALLCV "vulkan/vulkan.h vkResetCommandBuffer"
  vkResetCommandBuffer
    :: VkResetCommandBuffer

foreign import CALLCV unsafe "vulkan/vulkan.h vkResetCommandBuffer"
  vkResetCommandBufferUnsafe
    :: VkResetCommandBuffer
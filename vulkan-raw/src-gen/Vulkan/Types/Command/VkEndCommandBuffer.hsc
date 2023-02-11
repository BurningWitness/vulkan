{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkEndCommandBuffer where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkEndCommandBuffer =
          VkCommandBuffer -- ^ commandBuffer
       -> IO VkResult

vkFunEndCommandBuffer :: VkFun VkEndCommandBuffer
vkFunEndCommandBuffer = VkFun (Ptr ("vkEndCommandBuffer\0"##))

foreign import CALLCV "vulkan/vulkan.h vkEndCommandBuffer"
  vkEndCommandBuffer
    :: VkEndCommandBuffer

foreign import CALLCV unsafe "vulkan/vulkan.h vkEndCommandBuffer"
  vkEndCommandBufferUnsafe
    :: VkEndCommandBuffer
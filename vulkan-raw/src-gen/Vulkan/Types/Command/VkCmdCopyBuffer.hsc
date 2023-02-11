{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdCopyBuffer where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBufferCopy
import Vulkan.Types.VkFun



type VkCmdCopyBuffer =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBuffer -- ^ srcBuffer
       -> VkBuffer -- ^ dstBuffer
       -> #{type uint32_t} -- ^ regionCount
       -> Ptr VkBufferCopy -- ^ pRegions
       -> IO ()

vkFunCmdCopyBuffer :: VkFun VkCmdCopyBuffer
vkFunCmdCopyBuffer = VkFun (Ptr ("vkCmdCopyBuffer\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdCopyBuffer"
  vkCmdCopyBuffer
    :: VkCmdCopyBuffer

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdCopyBuffer"
  vkCmdCopyBufferUnsafe
    :: VkCmdCopyBuffer
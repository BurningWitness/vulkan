{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdUpdateBuffer where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdUpdateBuffer =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBuffer -- ^ dstBuffer
       -> VkDeviceSize -- ^ dstOffset
       -> VkDeviceSize -- ^ dataSize
       -> Ptr () -- ^ pData
       -> IO ()

vkFunCmdUpdateBuffer :: VkFun VkCmdUpdateBuffer
vkFunCmdUpdateBuffer = VkFun (Ptr ("vkCmdUpdateBuffer\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdUpdateBuffer"
  vkCmdUpdateBuffer
    :: VkCmdUpdateBuffer

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdUpdateBuffer"
  vkCmdUpdateBufferUnsafe
    :: VkCmdUpdateBuffer
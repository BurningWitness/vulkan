{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdFillBuffer where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdFillBuffer =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBuffer -- ^ dstBuffer
       -> VkDeviceSize -- ^ dstOffset
       -> VkDeviceSize -- ^ size
       -> #{type uint32_t} -- ^ data
       -> IO ()

vkFunCmdFillBuffer :: VkFun VkCmdFillBuffer
vkFunCmdFillBuffer = VkFun (Ptr ("vkCmdFillBuffer\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdFillBuffer"
  vkCmdFillBuffer
    :: VkCmdFillBuffer

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdFillBuffer"
  vkCmdFillBufferUnsafe
    :: VkCmdFillBuffer
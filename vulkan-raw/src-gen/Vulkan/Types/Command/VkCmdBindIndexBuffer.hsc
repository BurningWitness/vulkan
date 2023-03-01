{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdBindIndexBuffer where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkIndexType
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdBindIndexBuffer =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBuffer -- ^ buffer
       -> VkDeviceSize -- ^ offset
       -> VkIndexType -- ^ indexType
       -> IO ()

vkFunCmdBindIndexBuffer :: VkFun VkCmdBindIndexBuffer
vkFunCmdBindIndexBuffer = VkFun (Ptr ("vkCmdBindIndexBuffer\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdBindIndexBuffer"
  vkCmdBindIndexBuffer
    :: VkCmdBindIndexBuffer

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdBindIndexBuffer"
  vkCmdBindIndexBufferUnsafe
    :: VkCmdBindIndexBuffer
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdDrawIndexed where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdDrawIndexed =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ indexCount
       -> #{type uint32_t} -- ^ instanceCount
       -> #{type uint32_t} -- ^ firstIndex
       -> #{type int32_t} -- ^ vertexOffset
       -> #{type uint32_t} -- ^ firstInstance
       -> IO ()

vkFunCmdDrawIndexed :: VkFun VkCmdDrawIndexed
vkFunCmdDrawIndexed = VkFun (Ptr ("vkCmdDrawIndexed\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdDrawIndexed"
  vkCmdDrawIndexed
    :: VkCmdDrawIndexed

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdDrawIndexed"
  vkCmdDrawIndexedUnsafe
    :: VkCmdDrawIndexed
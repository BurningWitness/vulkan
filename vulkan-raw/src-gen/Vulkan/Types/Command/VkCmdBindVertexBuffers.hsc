{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdBindVertexBuffers where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdBindVertexBuffers =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ firstBinding
       -> #{type uint32_t} -- ^ bindingCount
       -> Ptr VkBuffer -- ^ pBuffers
       -> Ptr VkDeviceSize -- ^ pOffsets
       -> IO ()

vkFunCmdBindVertexBuffers :: VkFun VkCmdBindVertexBuffers
vkFunCmdBindVertexBuffers = VkFun (Ptr ("vkCmdBindVertexBuffers\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdBindVertexBuffers"
  vkCmdBindVertexBuffers
    :: VkCmdBindVertexBuffers

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdBindVertexBuffers"
  vkCmdBindVertexBuffersUnsafe
    :: VkCmdBindVertexBuffers
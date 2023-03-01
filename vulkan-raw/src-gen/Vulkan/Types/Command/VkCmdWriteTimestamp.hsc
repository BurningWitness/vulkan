{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdWriteTimestamp where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkPipelineStageFlagBits
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdWriteTimestamp =
          VkCommandBuffer -- ^ commandBuffer
       -> VkPipelineStageFlagBits -- ^ pipelineStage
       -> VkQueryPool -- ^ queryPool
       -> #{type uint32_t} -- ^ query
       -> IO ()

vkFunCmdWriteTimestamp :: VkFun VkCmdWriteTimestamp
vkFunCmdWriteTimestamp = VkFun (Ptr ("vkCmdWriteTimestamp\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdWriteTimestamp"
  vkCmdWriteTimestamp
    :: VkCmdWriteTimestamp

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdWriteTimestamp"
  vkCmdWriteTimestampUnsafe
    :: VkCmdWriteTimestamp
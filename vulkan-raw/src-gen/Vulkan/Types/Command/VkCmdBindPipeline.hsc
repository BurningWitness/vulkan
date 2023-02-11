{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdBindPipeline where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkPipelineBindPoint
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdBindPipeline =
          VkCommandBuffer -- ^ commandBuffer
       -> VkPipelineBindPoint -- ^ pipelineBindPoint
       -> VkPipeline -- ^ pipeline
       -> IO ()

vkFunCmdBindPipeline :: VkFun VkCmdBindPipeline
vkFunCmdBindPipeline = VkFun (Ptr ("vkCmdBindPipeline\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdBindPipeline"
  vkCmdBindPipeline
    :: VkCmdBindPipeline

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdBindPipeline"
  vkCmdBindPipelineUnsafe
    :: VkCmdBindPipeline
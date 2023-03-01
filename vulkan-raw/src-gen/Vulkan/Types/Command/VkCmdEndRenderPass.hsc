{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdEndRenderPass where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdEndRenderPass =
          VkCommandBuffer -- ^ commandBuffer
       -> IO ()

vkFunCmdEndRenderPass :: VkFun VkCmdEndRenderPass
vkFunCmdEndRenderPass = VkFun (Ptr ("vkCmdEndRenderPass\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdEndRenderPass"
  vkCmdEndRenderPass
    :: VkCmdEndRenderPass

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdEndRenderPass"
  vkCmdEndRenderPassUnsafe
    :: VkCmdEndRenderPass
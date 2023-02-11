{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdBeginRenderPass where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkSubpassContents
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkRenderPassBeginInfo
import Vulkan.Types.VkFun



type VkCmdBeginRenderPass =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkRenderPassBeginInfo -- ^ pRenderPassBegin
       -> VkSubpassContents -- ^ contents
       -> IO ()

vkFunCmdBeginRenderPass :: VkFun VkCmdBeginRenderPass
vkFunCmdBeginRenderPass = VkFun (Ptr ("vkCmdBeginRenderPass\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdBeginRenderPass"
  vkCmdBeginRenderPass
    :: VkCmdBeginRenderPass

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdBeginRenderPass"
  vkCmdBeginRenderPassUnsafe
    :: VkCmdBeginRenderPass
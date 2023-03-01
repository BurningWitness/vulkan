{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_create_renderpass2

module Vulkan.Types.Command.VkCmdBeginRenderPass2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkRenderPassBeginInfo
import Vulkan.Types.Struct.VkSubpassBeginInfo
import Vulkan.Types.VkFun



type VkCmdBeginRenderPass2KHR =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkRenderPassBeginInfo -- ^ pRenderPassBegin
       -> Ptr VkSubpassBeginInfo -- ^ pSubpassBeginInfo
       -> IO ()

vkFunCmdBeginRenderPass2KHR :: VkFun VkCmdBeginRenderPass2KHR
vkFunCmdBeginRenderPass2KHR = VkFun (Ptr ("vkCmdBeginRenderPass2KHR\0"##))

#else

module Vulkan.Types.Command.VkCmdBeginRenderPass2KHR where

#endif
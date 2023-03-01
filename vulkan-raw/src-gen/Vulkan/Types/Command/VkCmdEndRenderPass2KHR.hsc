{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_create_renderpass2

module Vulkan.Types.Command.VkCmdEndRenderPass2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkSubpassEndInfo
import Vulkan.Types.VkFun



type VkCmdEndRenderPass2KHR =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkSubpassEndInfo -- ^ pSubpassEndInfo
       -> IO ()

vkFunCmdEndRenderPass2KHR :: VkFun VkCmdEndRenderPass2KHR
vkFunCmdEndRenderPass2KHR = VkFun (Ptr ("vkCmdEndRenderPass2KHR\0"##))

#else

module Vulkan.Types.Command.VkCmdEndRenderPass2KHR where

#endif
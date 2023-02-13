{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_create_renderpass2

module Vulkan.Types.Command.VkCmdNextSubpass2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkSubpassBeginInfo
import Vulkan.Types.Struct.VkSubpassEndInfo
import Vulkan.Types.VkFun



type VkCmdNextSubpass2KHR =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkSubpassBeginInfo -- ^ pSubpassBeginInfo
       -> Ptr VkSubpassEndInfo -- ^ pSubpassEndInfo
       -> IO ()

vkFunCmdNextSubpass2KHR :: VkFun VkCmdNextSubpass2KHR
vkFunCmdNextSubpass2KHR = VkFun (Ptr ("vkCmdNextSubpass2KHR\0"##))

#else

module Vulkan.Types.Command.VkCmdNextSubpass2KHR where

#endif
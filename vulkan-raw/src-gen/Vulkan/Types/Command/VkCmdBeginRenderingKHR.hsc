{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_dynamic_rendering

module Vulkan.Types.Command.VkCmdBeginRenderingKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkRenderingInfo
import Vulkan.Types.VkFun



type VkCmdBeginRenderingKHR =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkRenderingInfo -- ^ pRenderingInfo
       -> IO ()

vkFunCmdBeginRenderingKHR :: VkFun VkCmdBeginRenderingKHR
vkFunCmdBeginRenderingKHR = VkFun (Ptr ("vkCmdBeginRenderingKHR\0"##))

#else

module Vulkan.Types.Command.VkCmdBeginRenderingKHR where

#endif
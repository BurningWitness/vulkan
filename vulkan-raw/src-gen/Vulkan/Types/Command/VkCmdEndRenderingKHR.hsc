{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_dynamic_rendering

module Vulkan.Types.Command.VkCmdEndRenderingKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdEndRenderingKHR =
          VkCommandBuffer -- ^ commandBuffer
       -> IO ()

vkFunCmdEndRenderingKHR :: VkFun VkCmdEndRenderingKHR
vkFunCmdEndRenderingKHR = VkFun (Ptr ("vkCmdEndRenderingKHR\0"##))

#else

module Vulkan.Types.Command.VkCmdEndRenderingKHR where

#endif
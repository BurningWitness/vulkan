{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_queue

module Vulkan.Types.Command.VkCmdBeginVideoCodingKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkVideoBeginCodingInfoKHR
import Vulkan.Types.VkFun



type VkCmdBeginVideoCodingKHR =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkVideoBeginCodingInfoKHR -- ^ pBeginInfo
       -> IO ()

vkFunCmdBeginVideoCodingKHR :: VkFun VkCmdBeginVideoCodingKHR
vkFunCmdBeginVideoCodingKHR = VkFun (Ptr ("vkCmdBeginVideoCodingKHR\0"##))

#else

module Vulkan.Types.Command.VkCmdBeginVideoCodingKHR where

#endif
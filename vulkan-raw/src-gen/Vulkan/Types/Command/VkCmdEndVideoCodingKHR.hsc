{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_queue

module Vulkan.Types.Command.VkCmdEndVideoCodingKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkVideoEndCodingInfoKHR
import Vulkan.Types.VkFun



type VkCmdEndVideoCodingKHR =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkVideoEndCodingInfoKHR -- ^ pEndCodingInfo
       -> IO ()

vkFunCmdEndVideoCodingKHR :: VkFun VkCmdEndVideoCodingKHR
vkFunCmdEndVideoCodingKHR = VkFun (Ptr ("vkCmdEndVideoCodingKHR\0"##))

#else

module Vulkan.Types.Command.VkCmdEndVideoCodingKHR where

#endif
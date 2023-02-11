{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_queue

module Vulkan.Types.Command.VkCmdControlVideoCodingKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkVideoCodingControlInfoKHR
import Vulkan.Types.VkFun



type VkCmdControlVideoCodingKHR =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkVideoCodingControlInfoKHR -- ^ pCodingControlInfo
       -> IO ()

vkFunCmdControlVideoCodingKHR :: VkFun VkCmdControlVideoCodingKHR
vkFunCmdControlVideoCodingKHR = VkFun (Ptr ("vkCmdControlVideoCodingKHR\0"##))

#else

module Vulkan.Types.Command.VkCmdControlVideoCodingKHR where

#endif
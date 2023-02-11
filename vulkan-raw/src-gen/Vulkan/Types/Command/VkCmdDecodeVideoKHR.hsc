{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_decode_queue

module Vulkan.Types.Command.VkCmdDecodeVideoKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkVideoDecodeInfoKHR
import Vulkan.Types.VkFun



type VkCmdDecodeVideoKHR =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkVideoDecodeInfoKHR -- ^ pDecodeInfo
       -> IO ()

vkFunCmdDecodeVideoKHR :: VkFun VkCmdDecodeVideoKHR
vkFunCmdDecodeVideoKHR = VkFun (Ptr ("vkCmdDecodeVideoKHR\0"##))

#else

module Vulkan.Types.Command.VkCmdDecodeVideoKHR where

#endif
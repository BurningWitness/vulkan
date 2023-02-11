{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_encode_queue

module Vulkan.Types.Command.VkCmdEncodeVideoKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkVideoEncodeInfoKHR
import Vulkan.Types.VkFun



type VkCmdEncodeVideoKHR =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkVideoEncodeInfoKHR -- ^ pEncodeInfo
       -> IO ()

vkFunCmdEncodeVideoKHR :: VkFun VkCmdEncodeVideoKHR
vkFunCmdEncodeVideoKHR = VkFun (Ptr ("vkCmdEncodeVideoKHR\0"##))

#else

module Vulkan.Types.Command.VkCmdEncodeVideoKHR where

#endif
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_copy_commands2

module Vulkan.Types.Command.VkCmdBlitImage2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBlitImageInfo2
import Vulkan.Types.VkFun



type VkCmdBlitImage2KHR =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkBlitImageInfo2 -- ^ pBlitImageInfo
       -> IO ()

vkFunCmdBlitImage2KHR :: VkFun VkCmdBlitImage2KHR
vkFunCmdBlitImage2KHR = VkFun (Ptr ("vkCmdBlitImage2KHR\0"##))

#else

module Vulkan.Types.Command.VkCmdBlitImage2KHR where

#endif
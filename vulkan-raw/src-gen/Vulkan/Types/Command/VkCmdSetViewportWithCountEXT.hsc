{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state

module Vulkan.Types.Command.VkCmdSetViewportWithCountEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkViewport
import Vulkan.Types.VkFun



type VkCmdSetViewportWithCountEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ viewportCount
       -> Ptr VkViewport -- ^ pViewports
       -> IO ()

vkFunCmdSetViewportWithCountEXT :: VkFun VkCmdSetViewportWithCountEXT
vkFunCmdSetViewportWithCountEXT = VkFun (Ptr ("vkCmdSetViewportWithCountEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetViewportWithCountEXT where

#endif
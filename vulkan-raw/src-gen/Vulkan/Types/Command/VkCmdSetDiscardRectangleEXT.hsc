{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_discard_rectangles

module Vulkan.Types.Command.VkCmdSetDiscardRectangleEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkRect2D
import Vulkan.Types.VkFun



type VkCmdSetDiscardRectangleEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ firstDiscardRectangle
       -> #{type uint32_t} -- ^ discardRectangleCount
       -> Ptr VkRect2D -- ^ pDiscardRectangles
       -> IO ()

vkFunCmdSetDiscardRectangleEXT :: VkFun VkCmdSetDiscardRectangleEXT
vkFunCmdSetDiscardRectangleEXT = VkFun (Ptr ("vkCmdSetDiscardRectangleEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetDiscardRectangleEXT where

#endif
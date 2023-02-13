{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state

module Vulkan.Types.Command.VkCmdSetScissorWithCountEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkRect2D
import Vulkan.Types.VkFun



type VkCmdSetScissorWithCountEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ scissorCount
       -> Ptr VkRect2D -- ^ pScissors
       -> IO ()

vkFunCmdSetScissorWithCountEXT :: VkFun VkCmdSetScissorWithCountEXT
vkFunCmdSetScissorWithCountEXT = VkFun (Ptr ("vkCmdSetScissorWithCountEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetScissorWithCountEXT where

#endif
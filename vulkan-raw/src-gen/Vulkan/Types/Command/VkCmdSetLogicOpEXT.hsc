{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state2

module Vulkan.Types.Command.VkCmdSetLogicOpEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkLogicOp
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetLogicOpEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> VkLogicOp -- ^ logicOp
       -> IO ()

vkFunCmdSetLogicOpEXT :: VkFun VkCmdSetLogicOpEXT
vkFunCmdSetLogicOpEXT = VkFun (Ptr ("vkCmdSetLogicOpEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetLogicOpEXT where

#endif
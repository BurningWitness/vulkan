{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state3

module Vulkan.Types.Command.VkCmdSetLogicOpEnableEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetLogicOpEnableEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBool32 -- ^ logicOpEnable
       -> IO ()

vkFunCmdSetLogicOpEnableEXT :: VkFun VkCmdSetLogicOpEnableEXT
vkFunCmdSetLogicOpEnableEXT = VkFun (Ptr ("vkCmdSetLogicOpEnableEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetLogicOpEnableEXT where

#endif
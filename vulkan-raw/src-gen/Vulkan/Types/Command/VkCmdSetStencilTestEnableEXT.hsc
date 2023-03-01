{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state

module Vulkan.Types.Command.VkCmdSetStencilTestEnableEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetStencilTestEnableEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBool32 -- ^ stencilTestEnable
       -> IO ()

vkFunCmdSetStencilTestEnableEXT :: VkFun VkCmdSetStencilTestEnableEXT
vkFunCmdSetStencilTestEnableEXT = VkFun (Ptr ("vkCmdSetStencilTestEnableEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetStencilTestEnableEXT where

#endif
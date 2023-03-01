{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state2

module Vulkan.Types.Command.VkCmdSetPrimitiveRestartEnableEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetPrimitiveRestartEnableEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBool32 -- ^ primitiveRestartEnable
       -> IO ()

vkFunCmdSetPrimitiveRestartEnableEXT :: VkFun VkCmdSetPrimitiveRestartEnableEXT
vkFunCmdSetPrimitiveRestartEnableEXT = VkFun (Ptr ("vkCmdSetPrimitiveRestartEnableEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetPrimitiveRestartEnableEXT where

#endif
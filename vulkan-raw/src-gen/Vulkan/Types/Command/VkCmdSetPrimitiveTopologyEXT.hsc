{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state

module Vulkan.Types.Command.VkCmdSetPrimitiveTopologyEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkPrimitiveTopology
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetPrimitiveTopologyEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> VkPrimitiveTopology -- ^ primitiveTopology
       -> IO ()

vkFunCmdSetPrimitiveTopologyEXT :: VkFun VkCmdSetPrimitiveTopologyEXT
vkFunCmdSetPrimitiveTopologyEXT = VkFun (Ptr ("vkCmdSetPrimitiveTopologyEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetPrimitiveTopologyEXT where

#endif
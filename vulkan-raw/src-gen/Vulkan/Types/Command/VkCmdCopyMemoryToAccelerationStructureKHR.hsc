{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_acceleration_structure

module Vulkan.Types.Command.VkCmdCopyMemoryToAccelerationStructureKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkCopyMemoryToAccelerationStructureInfoKHR
import Vulkan.Types.VkFun



type VkCmdCopyMemoryToAccelerationStructureKHR =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkCopyMemoryToAccelerationStructureInfoKHR -- ^ pInfo
       -> IO ()

vkFunCmdCopyMemoryToAccelerationStructureKHR :: VkFun VkCmdCopyMemoryToAccelerationStructureKHR
vkFunCmdCopyMemoryToAccelerationStructureKHR = VkFun (Ptr ("vkCmdCopyMemoryToAccelerationStructureKHR\0"##))

#else

module Vulkan.Types.Command.VkCmdCopyMemoryToAccelerationStructureKHR where

#endif
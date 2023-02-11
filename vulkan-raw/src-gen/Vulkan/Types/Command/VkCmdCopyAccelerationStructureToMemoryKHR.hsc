{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_acceleration_structure

module Vulkan.Types.Command.VkCmdCopyAccelerationStructureToMemoryKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkCopyAccelerationStructureToMemoryInfoKHR
import Vulkan.Types.VkFun



type VkCmdCopyAccelerationStructureToMemoryKHR =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkCopyAccelerationStructureToMemoryInfoKHR -- ^ pInfo
       -> IO ()

vkFunCmdCopyAccelerationStructureToMemoryKHR :: VkFun VkCmdCopyAccelerationStructureToMemoryKHR
vkFunCmdCopyAccelerationStructureToMemoryKHR = VkFun (Ptr ("vkCmdCopyAccelerationStructureToMemoryKHR\0"##))

#else

module Vulkan.Types.Command.VkCmdCopyAccelerationStructureToMemoryKHR where

#endif
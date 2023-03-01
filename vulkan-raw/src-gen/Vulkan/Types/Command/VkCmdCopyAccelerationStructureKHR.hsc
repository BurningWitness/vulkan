{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_acceleration_structure

module Vulkan.Types.Command.VkCmdCopyAccelerationStructureKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkCopyAccelerationStructureInfoKHR
import Vulkan.Types.VkFun



type VkCmdCopyAccelerationStructureKHR =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkCopyAccelerationStructureInfoKHR -- ^ pInfo
       -> IO ()

vkFunCmdCopyAccelerationStructureKHR :: VkFun VkCmdCopyAccelerationStructureKHR
vkFunCmdCopyAccelerationStructureKHR = VkFun (Ptr ("vkCmdCopyAccelerationStructureKHR\0"##))

#else

module Vulkan.Types.Command.VkCmdCopyAccelerationStructureKHR where

#endif
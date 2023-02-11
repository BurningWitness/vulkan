{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_acceleration_structure

module Vulkan.Types.Command.VkCmdBuildAccelerationStructuresIndirectKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAccelerationStructureBuildGeometryInfoKHR
import Vulkan.Types.VkFun



type VkCmdBuildAccelerationStructuresIndirectKHR =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ infoCount
       -> Ptr VkAccelerationStructureBuildGeometryInfoKHR -- ^ pInfos
       -> Ptr VkDeviceAddress -- ^ pIndirectDeviceAddresses
       -> Ptr #{type uint32_t} -- ^ pIndirectStrides
       -> Ptr (Ptr #{type uint32_t}) -- ^ ppMaxPrimitiveCounts
       -> IO ()

vkFunCmdBuildAccelerationStructuresIndirectKHR :: VkFun VkCmdBuildAccelerationStructuresIndirectKHR
vkFunCmdBuildAccelerationStructuresIndirectKHR = VkFun (Ptr ("vkCmdBuildAccelerationStructuresIndirectKHR\0"##))

#else

module Vulkan.Types.Command.VkCmdBuildAccelerationStructuresIndirectKHR where

#endif
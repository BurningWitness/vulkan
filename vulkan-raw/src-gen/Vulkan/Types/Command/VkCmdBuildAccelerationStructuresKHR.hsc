{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_acceleration_structure

module Vulkan.Types.Command.VkCmdBuildAccelerationStructuresKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAccelerationStructureBuildGeometryInfoKHR
import Vulkan.Types.Struct.VkAccelerationStructureBuildRangeInfoKHR
import Vulkan.Types.VkFun



type VkCmdBuildAccelerationStructuresKHR =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ infoCount
       -> Ptr VkAccelerationStructureBuildGeometryInfoKHR -- ^ pInfos
       -> Ptr (Ptr VkAccelerationStructureBuildRangeInfoKHR) -- ^ ppBuildRangeInfos
       -> IO ()

vkFunCmdBuildAccelerationStructuresKHR :: VkFun VkCmdBuildAccelerationStructuresKHR
vkFunCmdBuildAccelerationStructuresKHR = VkFun (Ptr ("vkCmdBuildAccelerationStructuresKHR\0"##))

#else

module Vulkan.Types.Command.VkCmdBuildAccelerationStructuresKHR where

#endif
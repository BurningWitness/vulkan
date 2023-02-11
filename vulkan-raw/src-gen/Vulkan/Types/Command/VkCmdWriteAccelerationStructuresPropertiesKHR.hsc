{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_acceleration_structure

module Vulkan.Types.Command.VkCmdWriteAccelerationStructuresPropertiesKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkQueryType
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdWriteAccelerationStructuresPropertiesKHR =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ accelerationStructureCount
       -> Ptr VkAccelerationStructureKHR -- ^ pAccelerationStructures
       -> VkQueryType -- ^ queryType
       -> VkQueryPool -- ^ queryPool
       -> #{type uint32_t} -- ^ firstQuery
       -> IO ()

vkFunCmdWriteAccelerationStructuresPropertiesKHR :: VkFun VkCmdWriteAccelerationStructuresPropertiesKHR
vkFunCmdWriteAccelerationStructuresPropertiesKHR = VkFun (Ptr ("vkCmdWriteAccelerationStructuresPropertiesKHR\0"##))

#else

module Vulkan.Types.Command.VkCmdWriteAccelerationStructuresPropertiesKHR where

#endif
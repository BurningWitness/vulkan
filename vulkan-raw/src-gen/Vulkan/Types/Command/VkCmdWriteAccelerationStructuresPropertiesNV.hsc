{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing

module Vulkan.Types.Command.VkCmdWriteAccelerationStructuresPropertiesNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkQueryType
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdWriteAccelerationStructuresPropertiesNV =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ accelerationStructureCount
       -> Ptr VkAccelerationStructureNV -- ^ pAccelerationStructures
       -> VkQueryType -- ^ queryType
       -> VkQueryPool -- ^ queryPool
       -> #{type uint32_t} -- ^ firstQuery
       -> IO ()

vkFunCmdWriteAccelerationStructuresPropertiesNV :: VkFun VkCmdWriteAccelerationStructuresPropertiesNV
vkFunCmdWriteAccelerationStructuresPropertiesNV = VkFun (Ptr ("vkCmdWriteAccelerationStructuresPropertiesNV\0"##))

#else

module Vulkan.Types.Command.VkCmdWriteAccelerationStructuresPropertiesNV where

#endif
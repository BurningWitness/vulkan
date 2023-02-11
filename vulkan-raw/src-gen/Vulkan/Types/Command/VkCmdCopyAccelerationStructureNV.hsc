{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing

module Vulkan.Types.Command.VkCmdCopyAccelerationStructureNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkCopyAccelerationStructureModeKHR
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdCopyAccelerationStructureNV =
          VkCommandBuffer -- ^ commandBuffer
       -> VkAccelerationStructureNV -- ^ dst
       -> VkAccelerationStructureNV -- ^ src
       -> VkCopyAccelerationStructureModeKHR -- ^ mode
       -> IO ()

vkFunCmdCopyAccelerationStructureNV :: VkFun VkCmdCopyAccelerationStructureNV
vkFunCmdCopyAccelerationStructureNV = VkFun (Ptr ("vkCmdCopyAccelerationStructureNV\0"##))

#else

module Vulkan.Types.Command.VkCmdCopyAccelerationStructureNV where

#endif
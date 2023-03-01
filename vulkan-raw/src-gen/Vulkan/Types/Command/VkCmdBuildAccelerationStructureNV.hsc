{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing

module Vulkan.Types.Command.VkCmdBuildAccelerationStructureNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAccelerationStructureInfoNV
import Vulkan.Types.VkFun



type VkCmdBuildAccelerationStructureNV =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkAccelerationStructureInfoNV -- ^ pInfo
       -> VkBuffer -- ^ instanceData
       -> VkDeviceSize -- ^ instanceOffset
       -> VkBool32 -- ^ update
       -> VkAccelerationStructureNV -- ^ dst
       -> VkAccelerationStructureNV -- ^ src
       -> VkBuffer -- ^ scratch
       -> VkDeviceSize -- ^ scratchOffset
       -> IO ()

vkFunCmdBuildAccelerationStructureNV :: VkFun VkCmdBuildAccelerationStructureNV
vkFunCmdBuildAccelerationStructureNV = VkFun (Ptr ("vkCmdBuildAccelerationStructureNV\0"##))

#else

module Vulkan.Types.Command.VkCmdBuildAccelerationStructureNV where

#endif
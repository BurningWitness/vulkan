{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_mesh_shader

module Vulkan.Types.Command.VkCmdDrawMeshTasksIndirectCountNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdDrawMeshTasksIndirectCountNV =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBuffer -- ^ buffer
       -> VkDeviceSize -- ^ offset
       -> VkBuffer -- ^ countBuffer
       -> VkDeviceSize -- ^ countBufferOffset
       -> #{type uint32_t} -- ^ maxDrawCount
       -> #{type uint32_t} -- ^ stride
       -> IO ()

vkFunCmdDrawMeshTasksIndirectCountNV :: VkFun VkCmdDrawMeshTasksIndirectCountNV
vkFunCmdDrawMeshTasksIndirectCountNV = VkFun (Ptr ("vkCmdDrawMeshTasksIndirectCountNV\0"##))

#else

module Vulkan.Types.Command.VkCmdDrawMeshTasksIndirectCountNV where

#endif
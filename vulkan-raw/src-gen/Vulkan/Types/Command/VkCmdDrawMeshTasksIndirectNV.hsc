{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_mesh_shader

module Vulkan.Types.Command.VkCmdDrawMeshTasksIndirectNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdDrawMeshTasksIndirectNV =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBuffer -- ^ buffer
       -> VkDeviceSize -- ^ offset
       -> #{type uint32_t} -- ^ drawCount
       -> #{type uint32_t} -- ^ stride
       -> IO ()

vkFunCmdDrawMeshTasksIndirectNV :: VkFun VkCmdDrawMeshTasksIndirectNV
vkFunCmdDrawMeshTasksIndirectNV = VkFun (Ptr ("vkCmdDrawMeshTasksIndirectNV\0"##))

#else

module Vulkan.Types.Command.VkCmdDrawMeshTasksIndirectNV where

#endif
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_mesh_shader

module Vulkan.Types.Command.VkCmdDrawMeshTasksIndirectEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdDrawMeshTasksIndirectEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBuffer -- ^ buffer
       -> VkDeviceSize -- ^ offset
       -> #{type uint32_t} -- ^ drawCount
       -> #{type uint32_t} -- ^ stride
       -> IO ()

vkFunCmdDrawMeshTasksIndirectEXT :: VkFun VkCmdDrawMeshTasksIndirectEXT
vkFunCmdDrawMeshTasksIndirectEXT = VkFun (Ptr ("vkCmdDrawMeshTasksIndirectEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdDrawMeshTasksIndirectEXT where

#endif
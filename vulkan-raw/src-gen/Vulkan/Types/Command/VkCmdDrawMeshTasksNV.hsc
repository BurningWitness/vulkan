{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_mesh_shader

module Vulkan.Types.Command.VkCmdDrawMeshTasksNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdDrawMeshTasksNV =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ taskCount
       -> #{type uint32_t} -- ^ firstTask
       -> IO ()

vkFunCmdDrawMeshTasksNV :: VkFun VkCmdDrawMeshTasksNV
vkFunCmdDrawMeshTasksNV = VkFun (Ptr ("vkCmdDrawMeshTasksNV\0"##))

#else

module Vulkan.Types.Command.VkCmdDrawMeshTasksNV where

#endif
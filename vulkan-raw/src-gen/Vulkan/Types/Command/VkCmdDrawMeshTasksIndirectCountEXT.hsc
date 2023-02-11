{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_mesh_shader

module Vulkan.Types.Command.VkCmdDrawMeshTasksIndirectCountEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdDrawMeshTasksIndirectCountEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBuffer -- ^ buffer
       -> VkDeviceSize -- ^ offset
       -> VkBuffer -- ^ countBuffer
       -> VkDeviceSize -- ^ countBufferOffset
       -> #{type uint32_t} -- ^ maxDrawCount
       -> #{type uint32_t} -- ^ stride
       -> IO ()

vkFunCmdDrawMeshTasksIndirectCountEXT :: VkFun VkCmdDrawMeshTasksIndirectCountEXT
vkFunCmdDrawMeshTasksIndirectCountEXT = VkFun (Ptr ("vkCmdDrawMeshTasksIndirectCountEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdDrawMeshTasksIndirectCountEXT where

#endif
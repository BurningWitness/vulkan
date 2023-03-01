{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_mesh_shader

module Vulkan.Types.Command.VkCmdDrawMeshTasksEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdDrawMeshTasksEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ groupCountX
       -> #{type uint32_t} -- ^ groupCountY
       -> #{type uint32_t} -- ^ groupCountZ
       -> IO ()

vkFunCmdDrawMeshTasksEXT :: VkFun VkCmdDrawMeshTasksEXT
vkFunCmdDrawMeshTasksEXT = VkFun (Ptr ("vkCmdDrawMeshTasksEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdDrawMeshTasksEXT where

#endif
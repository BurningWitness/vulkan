{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_vertex_input_dynamic_state

module Vulkan.Types.Command.VkCmdSetVertexInputEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkVertexInputAttributeDescription2EXT
import Vulkan.Types.Struct.VkVertexInputBindingDescription2EXT
import Vulkan.Types.VkFun



type VkCmdSetVertexInputEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ vertexBindingDescriptionCount
       -> Ptr VkVertexInputBindingDescription2EXT -- ^ pVertexBindingDescriptions
       -> #{type uint32_t} -- ^ vertexAttributeDescriptionCount
       -> Ptr VkVertexInputAttributeDescription2EXT -- ^ pVertexAttributeDescriptions
       -> IO ()

vkFunCmdSetVertexInputEXT :: VkFun VkCmdSetVertexInputEXT
vkFunCmdSetVertexInputEXT = VkFun (Ptr ("vkCmdSetVertexInputEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetVertexInputEXT where

#endif
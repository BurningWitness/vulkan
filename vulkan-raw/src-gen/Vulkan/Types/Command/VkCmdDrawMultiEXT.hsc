{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_multi_draw

module Vulkan.Types.Command.VkCmdDrawMultiEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkMultiDrawInfoEXT
import Vulkan.Types.VkFun



type VkCmdDrawMultiEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ drawCount
       -> Ptr VkMultiDrawInfoEXT -- ^ pVertexInfo
       -> #{type uint32_t} -- ^ instanceCount
       -> #{type uint32_t} -- ^ firstInstance
       -> #{type uint32_t} -- ^ stride
       -> IO ()

vkFunCmdDrawMultiEXT :: VkFun VkCmdDrawMultiEXT
vkFunCmdDrawMultiEXT = VkFun (Ptr ("vkCmdDrawMultiEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdDrawMultiEXT where

#endif
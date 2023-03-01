{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_multi_draw

module Vulkan.Types.Command.VkCmdDrawMultiIndexedEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkMultiDrawIndexedInfoEXT
import Vulkan.Types.VkFun



type VkCmdDrawMultiIndexedEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ drawCount
       -> Ptr VkMultiDrawIndexedInfoEXT -- ^ pIndexInfo
       -> #{type uint32_t} -- ^ instanceCount
       -> #{type uint32_t} -- ^ firstInstance
       -> #{type uint32_t} -- ^ stride
       -> Ptr #{type int32_t} -- ^ pVertexOffset
       -> IO ()

vkFunCmdDrawMultiIndexedEXT :: VkFun VkCmdDrawMultiIndexedEXT
vkFunCmdDrawMultiIndexedEXT = VkFun (Ptr ("vkCmdDrawMultiIndexedEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdDrawMultiIndexedEXT where

#endif
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_transform_feedback

module Vulkan.Types.Command.VkCmdBeginQueryIndexedEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkQueryControlFlags
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdBeginQueryIndexedEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> VkQueryPool -- ^ queryPool
       -> #{type uint32_t} -- ^ query
       -> VkQueryControlFlags -- ^ flags
       -> #{type uint32_t} -- ^ index
       -> IO ()

vkFunCmdBeginQueryIndexedEXT :: VkFun VkCmdBeginQueryIndexedEXT
vkFunCmdBeginQueryIndexedEXT = VkFun (Ptr ("vkCmdBeginQueryIndexedEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdBeginQueryIndexedEXT where

#endif
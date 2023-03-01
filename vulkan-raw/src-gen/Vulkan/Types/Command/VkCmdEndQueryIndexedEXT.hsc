{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_transform_feedback

module Vulkan.Types.Command.VkCmdEndQueryIndexedEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdEndQueryIndexedEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> VkQueryPool -- ^ queryPool
       -> #{type uint32_t} -- ^ query
       -> #{type uint32_t} -- ^ index
       -> IO ()

vkFunCmdEndQueryIndexedEXT :: VkFun VkCmdEndQueryIndexedEXT
vkFunCmdEndQueryIndexedEXT = VkFun (Ptr ("vkCmdEndQueryIndexedEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdEndQueryIndexedEXT where

#endif
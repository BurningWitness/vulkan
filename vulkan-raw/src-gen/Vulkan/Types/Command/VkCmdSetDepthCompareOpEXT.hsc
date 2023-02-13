{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state

module Vulkan.Types.Command.VkCmdSetDepthCompareOpEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkCompareOp
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetDepthCompareOpEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> VkCompareOp -- ^ depthCompareOp
       -> IO ()

vkFunCmdSetDepthCompareOpEXT :: VkFun VkCmdSetDepthCompareOpEXT
vkFunCmdSetDepthCompareOpEXT = VkFun (Ptr ("vkCmdSetDepthCompareOpEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetDepthCompareOpEXT where

#endif
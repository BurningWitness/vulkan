{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state

module Vulkan.Types.Command.VkCmdSetStencilOpEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkCompareOp
import Vulkan.Types.Enum.VkStencilFaceFlags
import Vulkan.Types.Enum.VkStencilOp
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetStencilOpEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> VkStencilFaceFlags -- ^ faceMask
       -> VkStencilOp -- ^ failOp
       -> VkStencilOp -- ^ passOp
       -> VkStencilOp -- ^ depthFailOp
       -> VkCompareOp -- ^ compareOp
       -> IO ()

vkFunCmdSetStencilOpEXT :: VkFun VkCmdSetStencilOpEXT
vkFunCmdSetStencilOpEXT = VkFun (Ptr ("vkCmdSetStencilOpEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetStencilOpEXT where

#endif
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkCmdSetStencilOp where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkCompareOp
import Vulkan.Types.Enum.VkStencilFaceFlags
import Vulkan.Types.Enum.VkStencilOp
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetStencilOp =
          VkCommandBuffer -- ^ commandBuffer
       -> VkStencilFaceFlags -- ^ faceMask
       -> VkStencilOp -- ^ failOp
       -> VkStencilOp -- ^ passOp
       -> VkStencilOp -- ^ depthFailOp
       -> VkCompareOp -- ^ compareOp
       -> IO ()

vkFunCmdSetStencilOp :: VkFun VkCmdSetStencilOp
vkFunCmdSetStencilOp = VkFun (Ptr ("vkCmdSetStencilOp\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkCmdSetStencilOp"
  vkCmdSetStencilOp
    :: VkCmdSetStencilOp

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdSetStencilOp"
  vkCmdSetStencilOpUnsafe
    :: VkCmdSetStencilOp
##endif

#else

module Vulkan.Types.Command.VkCmdSetStencilOp where

#endif
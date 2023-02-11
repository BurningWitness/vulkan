{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkCmdSetDepthCompareOp where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkCompareOp
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetDepthCompareOp =
          VkCommandBuffer -- ^ commandBuffer
       -> VkCompareOp -- ^ depthCompareOp
       -> IO ()

vkFunCmdSetDepthCompareOp :: VkFun VkCmdSetDepthCompareOp
vkFunCmdSetDepthCompareOp = VkFun (Ptr ("vkCmdSetDepthCompareOp\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkCmdSetDepthCompareOp"
  vkCmdSetDepthCompareOp
    :: VkCmdSetDepthCompareOp

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdSetDepthCompareOp"
  vkCmdSetDepthCompareOpUnsafe
    :: VkCmdSetDepthCompareOp
##endif

#else

module Vulkan.Types.Command.VkCmdSetDepthCompareOp where

#endif
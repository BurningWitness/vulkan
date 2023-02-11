{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkCmdSetPrimitiveTopology where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkPrimitiveTopology
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetPrimitiveTopology =
          VkCommandBuffer -- ^ commandBuffer
       -> VkPrimitiveTopology -- ^ primitiveTopology
       -> IO ()

vkFunCmdSetPrimitiveTopology :: VkFun VkCmdSetPrimitiveTopology
vkFunCmdSetPrimitiveTopology = VkFun (Ptr ("vkCmdSetPrimitiveTopology\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkCmdSetPrimitiveTopology"
  vkCmdSetPrimitiveTopology
    :: VkCmdSetPrimitiveTopology

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdSetPrimitiveTopology"
  vkCmdSetPrimitiveTopologyUnsafe
    :: VkCmdSetPrimitiveTopology
##endif

#else

module Vulkan.Types.Command.VkCmdSetPrimitiveTopology where

#endif
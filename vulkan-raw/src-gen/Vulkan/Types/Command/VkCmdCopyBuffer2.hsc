{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkCmdCopyBuffer2 where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkCopyBufferInfo2
import Vulkan.Types.VkFun



type VkCmdCopyBuffer2 =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkCopyBufferInfo2 -- ^ pCopyBufferInfo
       -> IO ()

vkFunCmdCopyBuffer2 :: VkFun VkCmdCopyBuffer2
vkFunCmdCopyBuffer2 = VkFun (Ptr ("vkCmdCopyBuffer2\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkCmdCopyBuffer2"
  vkCmdCopyBuffer2
    :: VkCmdCopyBuffer2

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdCopyBuffer2"
  vkCmdCopyBuffer2Unsafe
    :: VkCmdCopyBuffer2
##endif

#else

module Vulkan.Types.Command.VkCmdCopyBuffer2 where

#endif
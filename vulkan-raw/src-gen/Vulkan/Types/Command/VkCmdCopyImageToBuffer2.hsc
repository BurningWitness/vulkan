{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkCmdCopyImageToBuffer2 where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkCopyImageToBufferInfo2
import Vulkan.Types.VkFun



type VkCmdCopyImageToBuffer2 =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkCopyImageToBufferInfo2 -- ^ pCopyImageToBufferInfo
       -> IO ()

vkFunCmdCopyImageToBuffer2 :: VkFun VkCmdCopyImageToBuffer2
vkFunCmdCopyImageToBuffer2 = VkFun (Ptr ("vkCmdCopyImageToBuffer2\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkCmdCopyImageToBuffer2"
  vkCmdCopyImageToBuffer2
    :: VkCmdCopyImageToBuffer2

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdCopyImageToBuffer2"
  vkCmdCopyImageToBuffer2Unsafe
    :: VkCmdCopyImageToBuffer2
##endif

#else

module Vulkan.Types.Command.VkCmdCopyImageToBuffer2 where

#endif
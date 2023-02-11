{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkCmdCopyBufferToImage2 where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkCopyBufferToImageInfo2
import Vulkan.Types.VkFun



type VkCmdCopyBufferToImage2 =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkCopyBufferToImageInfo2 -- ^ pCopyBufferToImageInfo
       -> IO ()

vkFunCmdCopyBufferToImage2 :: VkFun VkCmdCopyBufferToImage2
vkFunCmdCopyBufferToImage2 = VkFun (Ptr ("vkCmdCopyBufferToImage2\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkCmdCopyBufferToImage2"
  vkCmdCopyBufferToImage2
    :: VkCmdCopyBufferToImage2

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdCopyBufferToImage2"
  vkCmdCopyBufferToImage2Unsafe
    :: VkCmdCopyBufferToImage2
##endif

#else

module Vulkan.Types.Command.VkCmdCopyBufferToImage2 where

#endif
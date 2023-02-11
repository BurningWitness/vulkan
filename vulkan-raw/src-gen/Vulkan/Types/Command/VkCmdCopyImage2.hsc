{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkCmdCopyImage2 where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkCopyImageInfo2
import Vulkan.Types.VkFun



type VkCmdCopyImage2 =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkCopyImageInfo2 -- ^ pCopyImageInfo
       -> IO ()

vkFunCmdCopyImage2 :: VkFun VkCmdCopyImage2
vkFunCmdCopyImage2 = VkFun (Ptr ("vkCmdCopyImage2\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkCmdCopyImage2"
  vkCmdCopyImage2
    :: VkCmdCopyImage2

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdCopyImage2"
  vkCmdCopyImage2Unsafe
    :: VkCmdCopyImage2
##endif

#else

module Vulkan.Types.Command.VkCmdCopyImage2 where

#endif
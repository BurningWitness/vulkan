{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkCmdWaitEvents2 where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDependencyInfo
import Vulkan.Types.VkFun



type VkCmdWaitEvents2 =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ eventCount
       -> Ptr VkEvent -- ^ pEvents
       -> Ptr VkDependencyInfo -- ^ pDependencyInfos
       -> IO ()

vkFunCmdWaitEvents2 :: VkFun VkCmdWaitEvents2
vkFunCmdWaitEvents2 = VkFun (Ptr ("vkCmdWaitEvents2\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkCmdWaitEvents2"
  vkCmdWaitEvents2
    :: VkCmdWaitEvents2

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdWaitEvents2"
  vkCmdWaitEvents2Unsafe
    :: VkCmdWaitEvents2
##endif

#else

module Vulkan.Types.Command.VkCmdWaitEvents2 where

#endif
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkCmdSetEvent2 where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDependencyInfo
import Vulkan.Types.VkFun



type VkCmdSetEvent2 =
          VkCommandBuffer -- ^ commandBuffer
       -> VkEvent -- ^ event
       -> Ptr VkDependencyInfo -- ^ pDependencyInfo
       -> IO ()

vkFunCmdSetEvent2 :: VkFun VkCmdSetEvent2
vkFunCmdSetEvent2 = VkFun (Ptr ("vkCmdSetEvent2\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkCmdSetEvent2"
  vkCmdSetEvent2
    :: VkCmdSetEvent2

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdSetEvent2"
  vkCmdSetEvent2Unsafe
    :: VkCmdSetEvent2
##endif

#else

module Vulkan.Types.Command.VkCmdSetEvent2 where

#endif
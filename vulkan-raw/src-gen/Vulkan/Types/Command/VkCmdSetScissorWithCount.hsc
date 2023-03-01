{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkCmdSetScissorWithCount where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkRect2D
import Vulkan.Types.VkFun



type VkCmdSetScissorWithCount =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ scissorCount
       -> Ptr VkRect2D -- ^ pScissors
       -> IO ()

vkFunCmdSetScissorWithCount :: VkFun VkCmdSetScissorWithCount
vkFunCmdSetScissorWithCount = VkFun (Ptr ("vkCmdSetScissorWithCount\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkCmdSetScissorWithCount"
  vkCmdSetScissorWithCount
    :: VkCmdSetScissorWithCount

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdSetScissorWithCount"
  vkCmdSetScissorWithCountUnsafe
    :: VkCmdSetScissorWithCount
##endif

#else

module Vulkan.Types.Command.VkCmdSetScissorWithCount where

#endif
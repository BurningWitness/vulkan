{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdResetQueryPool where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdResetQueryPool =
          VkCommandBuffer -- ^ commandBuffer
       -> VkQueryPool -- ^ queryPool
       -> #{type uint32_t} -- ^ firstQuery
       -> #{type uint32_t} -- ^ queryCount
       -> IO ()

vkFunCmdResetQueryPool :: VkFun VkCmdResetQueryPool
vkFunCmdResetQueryPool = VkFun (Ptr ("vkCmdResetQueryPool\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdResetQueryPool"
  vkCmdResetQueryPool
    :: VkCmdResetQueryPool

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdResetQueryPool"
  vkCmdResetQueryPoolUnsafe
    :: VkCmdResetQueryPool
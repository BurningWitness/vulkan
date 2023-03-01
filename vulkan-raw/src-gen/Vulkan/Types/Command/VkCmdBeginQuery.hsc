{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdBeginQuery where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkQueryControlFlags
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdBeginQuery =
          VkCommandBuffer -- ^ commandBuffer
       -> VkQueryPool -- ^ queryPool
       -> #{type uint32_t} -- ^ query
       -> VkQueryControlFlags -- ^ flags
       -> IO ()

vkFunCmdBeginQuery :: VkFun VkCmdBeginQuery
vkFunCmdBeginQuery = VkFun (Ptr ("vkCmdBeginQuery\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdBeginQuery"
  vkCmdBeginQuery
    :: VkCmdBeginQuery

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdBeginQuery"
  vkCmdBeginQueryUnsafe
    :: VkCmdBeginQuery
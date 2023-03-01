{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdCopyQueryPoolResults where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkQueryResultFlags
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdCopyQueryPoolResults =
          VkCommandBuffer -- ^ commandBuffer
       -> VkQueryPool -- ^ queryPool
       -> #{type uint32_t} -- ^ firstQuery
       -> #{type uint32_t} -- ^ queryCount
       -> VkBuffer -- ^ dstBuffer
       -> VkDeviceSize -- ^ dstOffset
       -> VkDeviceSize -- ^ stride
       -> VkQueryResultFlags -- ^ flags
       -> IO ()

vkFunCmdCopyQueryPoolResults :: VkFun VkCmdCopyQueryPoolResults
vkFunCmdCopyQueryPoolResults = VkFun (Ptr ("vkCmdCopyQueryPoolResults\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdCopyQueryPoolResults"
  vkCmdCopyQueryPoolResults
    :: VkCmdCopyQueryPoolResults

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdCopyQueryPoolResults"
  vkCmdCopyQueryPoolResultsUnsafe
    :: VkCmdCopyQueryPoolResults
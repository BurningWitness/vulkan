{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdEndQuery where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdEndQuery =
          VkCommandBuffer -- ^ commandBuffer
       -> VkQueryPool -- ^ queryPool
       -> #{type uint32_t} -- ^ query
       -> IO ()

vkFunCmdEndQuery :: VkFun VkCmdEndQuery
vkFunCmdEndQuery = VkFun (Ptr ("vkCmdEndQuery\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdEndQuery"
  vkCmdEndQuery
    :: VkCmdEndQuery

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdEndQuery"
  vkCmdEndQueryUnsafe
    :: VkCmdEndQuery
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdResetEvent where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkPipelineStageFlags
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdResetEvent =
          VkCommandBuffer -- ^ commandBuffer
       -> VkEvent -- ^ event
       -> VkPipelineStageFlags -- ^ stageMask
       -> IO ()

vkFunCmdResetEvent :: VkFun VkCmdResetEvent
vkFunCmdResetEvent = VkFun (Ptr ("vkCmdResetEvent\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdResetEvent"
  vkCmdResetEvent
    :: VkCmdResetEvent

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdResetEvent"
  vkCmdResetEventUnsafe
    :: VkCmdResetEvent
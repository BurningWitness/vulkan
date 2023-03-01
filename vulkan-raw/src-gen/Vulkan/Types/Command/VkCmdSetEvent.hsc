{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdSetEvent where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkPipelineStageFlags
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetEvent =
          VkCommandBuffer -- ^ commandBuffer
       -> VkEvent -- ^ event
       -> VkPipelineStageFlags -- ^ stageMask
       -> IO ()

vkFunCmdSetEvent :: VkFun VkCmdSetEvent
vkFunCmdSetEvent = VkFun (Ptr ("vkCmdSetEvent\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdSetEvent"
  vkCmdSetEvent
    :: VkCmdSetEvent

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdSetEvent"
  vkCmdSetEventUnsafe
    :: VkCmdSetEvent
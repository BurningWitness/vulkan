{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdDispatchIndirect where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdDispatchIndirect =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBuffer -- ^ buffer
       -> VkDeviceSize -- ^ offset
       -> IO ()

vkFunCmdDispatchIndirect :: VkFun VkCmdDispatchIndirect
vkFunCmdDispatchIndirect = VkFun (Ptr ("vkCmdDispatchIndirect\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdDispatchIndirect"
  vkCmdDispatchIndirect
    :: VkCmdDispatchIndirect

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdDispatchIndirect"
  vkCmdDispatchIndirectUnsafe
    :: VkCmdDispatchIndirect
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdDrawIndexedIndirect where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdDrawIndexedIndirect =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBuffer -- ^ buffer
       -> VkDeviceSize -- ^ offset
       -> #{type uint32_t} -- ^ drawCount
       -> #{type uint32_t} -- ^ stride
       -> IO ()

vkFunCmdDrawIndexedIndirect :: VkFun VkCmdDrawIndexedIndirect
vkFunCmdDrawIndexedIndirect = VkFun (Ptr ("vkCmdDrawIndexedIndirect\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdDrawIndexedIndirect"
  vkCmdDrawIndexedIndirect
    :: VkCmdDrawIndexedIndirect

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdDrawIndexedIndirect"
  vkCmdDrawIndexedIndirectUnsafe
    :: VkCmdDrawIndexedIndirect
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdDrawIndirect where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdDrawIndirect =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBuffer -- ^ buffer
       -> VkDeviceSize -- ^ offset
       -> #{type uint32_t} -- ^ drawCount
       -> #{type uint32_t} -- ^ stride
       -> IO ()

vkFunCmdDrawIndirect :: VkFun VkCmdDrawIndirect
vkFunCmdDrawIndirect = VkFun (Ptr ("vkCmdDrawIndirect\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdDrawIndirect"
  vkCmdDrawIndirect
    :: VkCmdDrawIndirect

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdDrawIndirect"
  vkCmdDrawIndirectUnsafe
    :: VkCmdDrawIndirect
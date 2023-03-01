{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Command.VkCmdDrawIndexedIndirectCount where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdDrawIndexedIndirectCount =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBuffer -- ^ buffer
       -> VkDeviceSize -- ^ offset
       -> VkBuffer -- ^ countBuffer
       -> VkDeviceSize -- ^ countBufferOffset
       -> #{type uint32_t} -- ^ maxDrawCount
       -> #{type uint32_t} -- ^ stride
       -> IO ()

vkFunCmdDrawIndexedIndirectCount :: VkFun VkCmdDrawIndexedIndirectCount
vkFunCmdDrawIndexedIndirectCount = VkFun (Ptr ("vkCmdDrawIndexedIndirectCount\0"##))

##if CORE_1_2
foreign import CALLCV "vulkan/vulkan.h vkCmdDrawIndexedIndirectCount"
  vkCmdDrawIndexedIndirectCount
    :: VkCmdDrawIndexedIndirectCount

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdDrawIndexedIndirectCount"
  vkCmdDrawIndexedIndirectCountUnsafe
    :: VkCmdDrawIndexedIndirectCount
##endif

#else

module Vulkan.Types.Command.VkCmdDrawIndexedIndirectCount where

#endif
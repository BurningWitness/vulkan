{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Command.VkCmdDrawIndirectCount where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdDrawIndirectCount =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBuffer -- ^ buffer
       -> VkDeviceSize -- ^ offset
       -> VkBuffer -- ^ countBuffer
       -> VkDeviceSize -- ^ countBufferOffset
       -> #{type uint32_t} -- ^ maxDrawCount
       -> #{type uint32_t} -- ^ stride
       -> IO ()

vkFunCmdDrawIndirectCount :: VkFun VkCmdDrawIndirectCount
vkFunCmdDrawIndirectCount = VkFun (Ptr ("vkCmdDrawIndirectCount\0"##))

##if CORE_1_2
foreign import CALLCV "vulkan/vulkan.h vkCmdDrawIndirectCount"
  vkCmdDrawIndirectCount
    :: VkCmdDrawIndirectCount

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdDrawIndirectCount"
  vkCmdDrawIndirectCountUnsafe
    :: VkCmdDrawIndirectCount
##endif

#else

module Vulkan.Types.Command.VkCmdDrawIndirectCount where

#endif
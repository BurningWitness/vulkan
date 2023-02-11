{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkCmdWriteTimestamp2 where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkPipelineStageFlags2
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdWriteTimestamp2 =
          VkCommandBuffer -- ^ commandBuffer
       -> VkPipelineStageFlags2 -- ^ stage
       -> VkQueryPool -- ^ queryPool
       -> #{type uint32_t} -- ^ query
       -> IO ()

vkFunCmdWriteTimestamp2 :: VkFun VkCmdWriteTimestamp2
vkFunCmdWriteTimestamp2 = VkFun (Ptr ("vkCmdWriteTimestamp2\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkCmdWriteTimestamp2"
  vkCmdWriteTimestamp2
    :: VkCmdWriteTimestamp2

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdWriteTimestamp2"
  vkCmdWriteTimestamp2Unsafe
    :: VkCmdWriteTimestamp2
##endif

#else

module Vulkan.Types.Command.VkCmdWriteTimestamp2 where

#endif
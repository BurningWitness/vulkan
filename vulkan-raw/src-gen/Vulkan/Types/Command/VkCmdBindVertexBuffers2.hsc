{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkCmdBindVertexBuffers2 where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdBindVertexBuffers2 =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ firstBinding
       -> #{type uint32_t} -- ^ bindingCount
       -> Ptr VkBuffer -- ^ pBuffers
       -> Ptr VkDeviceSize -- ^ pOffsets
       -> Ptr VkDeviceSize -- ^ pSizes
       -> Ptr VkDeviceSize -- ^ pStrides
       -> IO ()

vkFunCmdBindVertexBuffers2 :: VkFun VkCmdBindVertexBuffers2
vkFunCmdBindVertexBuffers2 = VkFun (Ptr ("vkCmdBindVertexBuffers2\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkCmdBindVertexBuffers2"
  vkCmdBindVertexBuffers2
    :: VkCmdBindVertexBuffers2

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdBindVertexBuffers2"
  vkCmdBindVertexBuffers2Unsafe
    :: VkCmdBindVertexBuffers2
##endif

#else

module Vulkan.Types.Command.VkCmdBindVertexBuffers2 where

#endif
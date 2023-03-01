{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkCmdResetEvent2 where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkPipelineStageFlags2
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdResetEvent2 =
          VkCommandBuffer -- ^ commandBuffer
       -> VkEvent -- ^ event
       -> VkPipelineStageFlags2 -- ^ stageMask
       -> IO ()

vkFunCmdResetEvent2 :: VkFun VkCmdResetEvent2
vkFunCmdResetEvent2 = VkFun (Ptr ("vkCmdResetEvent2\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkCmdResetEvent2"
  vkCmdResetEvent2
    :: VkCmdResetEvent2

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdResetEvent2"
  vkCmdResetEvent2Unsafe
    :: VkCmdResetEvent2
##endif

#else

module Vulkan.Types.Command.VkCmdResetEvent2 where

#endif
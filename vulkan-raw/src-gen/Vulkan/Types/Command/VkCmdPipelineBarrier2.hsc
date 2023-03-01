{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkCmdPipelineBarrier2 where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDependencyInfo
import Vulkan.Types.VkFun



type VkCmdPipelineBarrier2 =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkDependencyInfo -- ^ pDependencyInfo
       -> IO ()

vkFunCmdPipelineBarrier2 :: VkFun VkCmdPipelineBarrier2
vkFunCmdPipelineBarrier2 = VkFun (Ptr ("vkCmdPipelineBarrier2\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkCmdPipelineBarrier2"
  vkCmdPipelineBarrier2
    :: VkCmdPipelineBarrier2

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdPipelineBarrier2"
  vkCmdPipelineBarrier2Unsafe
    :: VkCmdPipelineBarrier2
##endif

#else

module Vulkan.Types.Command.VkCmdPipelineBarrier2 where

#endif
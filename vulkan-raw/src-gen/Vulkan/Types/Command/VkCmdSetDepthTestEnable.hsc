{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkCmdSetDepthTestEnable where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetDepthTestEnable =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBool32 -- ^ depthTestEnable
       -> IO ()

vkFunCmdSetDepthTestEnable :: VkFun VkCmdSetDepthTestEnable
vkFunCmdSetDepthTestEnable = VkFun (Ptr ("vkCmdSetDepthTestEnable\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkCmdSetDepthTestEnable"
  vkCmdSetDepthTestEnable
    :: VkCmdSetDepthTestEnable

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdSetDepthTestEnable"
  vkCmdSetDepthTestEnableUnsafe
    :: VkCmdSetDepthTestEnable
##endif

#else

module Vulkan.Types.Command.VkCmdSetDepthTestEnable where

#endif
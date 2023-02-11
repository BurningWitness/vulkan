{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkCmdSetDepthBoundsTestEnable where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetDepthBoundsTestEnable =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBool32 -- ^ depthBoundsTestEnable
       -> IO ()

vkFunCmdSetDepthBoundsTestEnable :: VkFun VkCmdSetDepthBoundsTestEnable
vkFunCmdSetDepthBoundsTestEnable = VkFun (Ptr ("vkCmdSetDepthBoundsTestEnable\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkCmdSetDepthBoundsTestEnable"
  vkCmdSetDepthBoundsTestEnable
    :: VkCmdSetDepthBoundsTestEnable

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdSetDepthBoundsTestEnable"
  vkCmdSetDepthBoundsTestEnableUnsafe
    :: VkCmdSetDepthBoundsTestEnable
##endif

#else

module Vulkan.Types.Command.VkCmdSetDepthBoundsTestEnable where

#endif
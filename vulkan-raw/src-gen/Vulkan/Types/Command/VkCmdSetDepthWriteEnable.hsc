{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkCmdSetDepthWriteEnable where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetDepthWriteEnable =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBool32 -- ^ depthWriteEnable
       -> IO ()

vkFunCmdSetDepthWriteEnable :: VkFun VkCmdSetDepthWriteEnable
vkFunCmdSetDepthWriteEnable = VkFun (Ptr ("vkCmdSetDepthWriteEnable\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkCmdSetDepthWriteEnable"
  vkCmdSetDepthWriteEnable
    :: VkCmdSetDepthWriteEnable

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdSetDepthWriteEnable"
  vkCmdSetDepthWriteEnableUnsafe
    :: VkCmdSetDepthWriteEnable
##endif

#else

module Vulkan.Types.Command.VkCmdSetDepthWriteEnable where

#endif
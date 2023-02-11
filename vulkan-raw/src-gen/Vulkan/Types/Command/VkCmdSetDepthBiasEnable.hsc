{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkCmdSetDepthBiasEnable where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetDepthBiasEnable =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBool32 -- ^ depthBiasEnable
       -> IO ()

vkFunCmdSetDepthBiasEnable :: VkFun VkCmdSetDepthBiasEnable
vkFunCmdSetDepthBiasEnable = VkFun (Ptr ("vkCmdSetDepthBiasEnable\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkCmdSetDepthBiasEnable"
  vkCmdSetDepthBiasEnable
    :: VkCmdSetDepthBiasEnable

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdSetDepthBiasEnable"
  vkCmdSetDepthBiasEnableUnsafe
    :: VkCmdSetDepthBiasEnable
##endif

#else

module Vulkan.Types.Command.VkCmdSetDepthBiasEnable where

#endif
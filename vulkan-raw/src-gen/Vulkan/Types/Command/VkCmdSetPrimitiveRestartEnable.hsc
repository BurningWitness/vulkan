{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkCmdSetPrimitiveRestartEnable where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetPrimitiveRestartEnable =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBool32 -- ^ primitiveRestartEnable
       -> IO ()

vkFunCmdSetPrimitiveRestartEnable :: VkFun VkCmdSetPrimitiveRestartEnable
vkFunCmdSetPrimitiveRestartEnable = VkFun (Ptr ("vkCmdSetPrimitiveRestartEnable\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkCmdSetPrimitiveRestartEnable"
  vkCmdSetPrimitiveRestartEnable
    :: VkCmdSetPrimitiveRestartEnable

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdSetPrimitiveRestartEnable"
  vkCmdSetPrimitiveRestartEnableUnsafe
    :: VkCmdSetPrimitiveRestartEnable
##endif

#else

module Vulkan.Types.Command.VkCmdSetPrimitiveRestartEnable where

#endif
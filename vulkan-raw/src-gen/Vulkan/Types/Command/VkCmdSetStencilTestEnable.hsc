{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkCmdSetStencilTestEnable where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetStencilTestEnable =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBool32 -- ^ stencilTestEnable
       -> IO ()

vkFunCmdSetStencilTestEnable :: VkFun VkCmdSetStencilTestEnable
vkFunCmdSetStencilTestEnable = VkFun (Ptr ("vkCmdSetStencilTestEnable\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkCmdSetStencilTestEnable"
  vkCmdSetStencilTestEnable
    :: VkCmdSetStencilTestEnable

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdSetStencilTestEnable"
  vkCmdSetStencilTestEnableUnsafe
    :: VkCmdSetStencilTestEnable
##endif

#else

module Vulkan.Types.Command.VkCmdSetStencilTestEnable where

#endif
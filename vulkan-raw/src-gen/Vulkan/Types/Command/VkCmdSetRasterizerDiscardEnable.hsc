{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkCmdSetRasterizerDiscardEnable where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetRasterizerDiscardEnable =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBool32 -- ^ rasterizerDiscardEnable
       -> IO ()

vkFunCmdSetRasterizerDiscardEnable :: VkFun VkCmdSetRasterizerDiscardEnable
vkFunCmdSetRasterizerDiscardEnable = VkFun (Ptr ("vkCmdSetRasterizerDiscardEnable\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkCmdSetRasterizerDiscardEnable"
  vkCmdSetRasterizerDiscardEnable
    :: VkCmdSetRasterizerDiscardEnable

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdSetRasterizerDiscardEnable"
  vkCmdSetRasterizerDiscardEnableUnsafe
    :: VkCmdSetRasterizerDiscardEnable
##endif

#else

module Vulkan.Types.Command.VkCmdSetRasterizerDiscardEnable where

#endif
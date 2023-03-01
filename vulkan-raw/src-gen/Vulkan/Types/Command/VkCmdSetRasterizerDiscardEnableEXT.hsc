{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state2

module Vulkan.Types.Command.VkCmdSetRasterizerDiscardEnableEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetRasterizerDiscardEnableEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBool32 -- ^ rasterizerDiscardEnable
       -> IO ()

vkFunCmdSetRasterizerDiscardEnableEXT :: VkFun VkCmdSetRasterizerDiscardEnableEXT
vkFunCmdSetRasterizerDiscardEnableEXT = VkFun (Ptr ("vkCmdSetRasterizerDiscardEnableEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetRasterizerDiscardEnableEXT where

#endif
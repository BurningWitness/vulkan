{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state

module Vulkan.Types.Command.VkCmdSetDepthWriteEnableEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetDepthWriteEnableEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBool32 -- ^ depthWriteEnable
       -> IO ()

vkFunCmdSetDepthWriteEnableEXT :: VkFun VkCmdSetDepthWriteEnableEXT
vkFunCmdSetDepthWriteEnableEXT = VkFun (Ptr ("vkCmdSetDepthWriteEnableEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetDepthWriteEnableEXT where

#endif
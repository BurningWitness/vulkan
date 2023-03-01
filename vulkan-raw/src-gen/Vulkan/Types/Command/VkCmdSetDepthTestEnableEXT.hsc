{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state

module Vulkan.Types.Command.VkCmdSetDepthTestEnableEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetDepthTestEnableEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBool32 -- ^ depthTestEnable
       -> IO ()

vkFunCmdSetDepthTestEnableEXT :: VkFun VkCmdSetDepthTestEnableEXT
vkFunCmdSetDepthTestEnableEXT = VkFun (Ptr ("vkCmdSetDepthTestEnableEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetDepthTestEnableEXT where

#endif
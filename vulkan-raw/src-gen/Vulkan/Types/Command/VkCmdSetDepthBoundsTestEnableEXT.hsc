{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state

module Vulkan.Types.Command.VkCmdSetDepthBoundsTestEnableEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetDepthBoundsTestEnableEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBool32 -- ^ depthBoundsTestEnable
       -> IO ()

vkFunCmdSetDepthBoundsTestEnableEXT :: VkFun VkCmdSetDepthBoundsTestEnableEXT
vkFunCmdSetDepthBoundsTestEnableEXT = VkFun (Ptr ("vkCmdSetDepthBoundsTestEnableEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetDepthBoundsTestEnableEXT where

#endif
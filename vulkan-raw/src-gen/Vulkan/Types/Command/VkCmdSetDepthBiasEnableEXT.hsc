{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state2

module Vulkan.Types.Command.VkCmdSetDepthBiasEnableEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetDepthBiasEnableEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBool32 -- ^ depthBiasEnable
       -> IO ()

vkFunCmdSetDepthBiasEnableEXT :: VkFun VkCmdSetDepthBiasEnableEXT
vkFunCmdSetDepthBiasEnableEXT = VkFun (Ptr ("vkCmdSetDepthBiasEnableEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetDepthBiasEnableEXT where

#endif
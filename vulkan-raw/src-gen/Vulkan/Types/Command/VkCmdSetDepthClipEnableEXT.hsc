{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state3

module Vulkan.Types.Command.VkCmdSetDepthClipEnableEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetDepthClipEnableEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBool32 -- ^ depthClipEnable
       -> IO ()

vkFunCmdSetDepthClipEnableEXT :: VkFun VkCmdSetDepthClipEnableEXT
vkFunCmdSetDepthClipEnableEXT = VkFun (Ptr ("vkCmdSetDepthClipEnableEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetDepthClipEnableEXT where

#endif
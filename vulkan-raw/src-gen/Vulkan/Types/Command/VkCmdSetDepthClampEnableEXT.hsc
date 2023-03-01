{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state3

module Vulkan.Types.Command.VkCmdSetDepthClampEnableEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetDepthClampEnableEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBool32 -- ^ depthClampEnable
       -> IO ()

vkFunCmdSetDepthClampEnableEXT :: VkFun VkCmdSetDepthClampEnableEXT
vkFunCmdSetDepthClampEnableEXT = VkFun (Ptr ("vkCmdSetDepthClampEnableEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetDepthClampEnableEXT where

#endif
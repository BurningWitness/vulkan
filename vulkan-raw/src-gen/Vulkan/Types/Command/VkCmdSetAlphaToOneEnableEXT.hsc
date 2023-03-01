{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state3

module Vulkan.Types.Command.VkCmdSetAlphaToOneEnableEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetAlphaToOneEnableEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBool32 -- ^ alphaToOneEnable
       -> IO ()

vkFunCmdSetAlphaToOneEnableEXT :: VkFun VkCmdSetAlphaToOneEnableEXT
vkFunCmdSetAlphaToOneEnableEXT = VkFun (Ptr ("vkCmdSetAlphaToOneEnableEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetAlphaToOneEnableEXT where

#endif
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state3

module Vulkan.Types.Command.VkCmdSetAlphaToCoverageEnableEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetAlphaToCoverageEnableEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBool32 -- ^ alphaToCoverageEnable
       -> IO ()

vkFunCmdSetAlphaToCoverageEnableEXT :: VkFun VkCmdSetAlphaToCoverageEnableEXT
vkFunCmdSetAlphaToCoverageEnableEXT = VkFun (Ptr ("vkCmdSetAlphaToCoverageEnableEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetAlphaToCoverageEnableEXT where

#endif
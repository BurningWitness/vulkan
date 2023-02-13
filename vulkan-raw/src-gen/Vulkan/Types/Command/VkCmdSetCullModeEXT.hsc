{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state

module Vulkan.Types.Command.VkCmdSetCullModeEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkCullModeFlags
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetCullModeEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> VkCullModeFlags -- ^ cullMode
       -> IO ()

vkFunCmdSetCullModeEXT :: VkFun VkCmdSetCullModeEXT
vkFunCmdSetCullModeEXT = VkFun (Ptr ("vkCmdSetCullModeEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetCullModeEXT where

#endif
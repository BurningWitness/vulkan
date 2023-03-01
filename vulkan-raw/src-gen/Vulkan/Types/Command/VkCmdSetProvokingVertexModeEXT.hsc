{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state3

module Vulkan.Types.Command.VkCmdSetProvokingVertexModeEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkProvokingVertexModeEXT
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetProvokingVertexModeEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> VkProvokingVertexModeEXT -- ^ provokingVertexMode
       -> IO ()

vkFunCmdSetProvokingVertexModeEXT :: VkFun VkCmdSetProvokingVertexModeEXT
vkFunCmdSetProvokingVertexModeEXT = VkFun (Ptr ("vkCmdSetProvokingVertexModeEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetProvokingVertexModeEXT where

#endif
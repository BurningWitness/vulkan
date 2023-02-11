{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state3

module Vulkan.Types.Command.VkCmdSetViewportSwizzleNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkViewportSwizzleNV
import Vulkan.Types.VkFun



type VkCmdSetViewportSwizzleNV =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ firstViewport
       -> #{type uint32_t} -- ^ viewportCount
       -> Ptr VkViewportSwizzleNV -- ^ pViewportSwizzles
       -> IO ()

vkFunCmdSetViewportSwizzleNV :: VkFun VkCmdSetViewportSwizzleNV
vkFunCmdSetViewportSwizzleNV = VkFun (Ptr ("vkCmdSetViewportSwizzleNV\0"##))

#else

module Vulkan.Types.Command.VkCmdSetViewportSwizzleNV where

#endif
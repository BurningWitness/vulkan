{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_debug_marker

module Vulkan.Types.Command.VkCmdDebugMarkerEndEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdDebugMarkerEndEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> IO ()

vkFunCmdDebugMarkerEndEXT :: VkFun VkCmdDebugMarkerEndEXT
vkFunCmdDebugMarkerEndEXT = VkFun (Ptr ("vkCmdDebugMarkerEndEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdDebugMarkerEndEXT where

#endif
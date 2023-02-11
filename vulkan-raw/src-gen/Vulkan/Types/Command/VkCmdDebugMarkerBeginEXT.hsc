{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_debug_marker

module Vulkan.Types.Command.VkCmdDebugMarkerBeginEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDebugMarkerMarkerInfoEXT
import Vulkan.Types.VkFun



type VkCmdDebugMarkerBeginEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkDebugMarkerMarkerInfoEXT -- ^ pMarkerInfo
       -> IO ()

vkFunCmdDebugMarkerBeginEXT :: VkFun VkCmdDebugMarkerBeginEXT
vkFunCmdDebugMarkerBeginEXT = VkFun (Ptr ("vkCmdDebugMarkerBeginEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdDebugMarkerBeginEXT where

#endif
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_debug_marker

module Vulkan.Types.Command.VkCmdDebugMarkerInsertEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDebugMarkerMarkerInfoEXT
import Vulkan.Types.VkFun



type VkCmdDebugMarkerInsertEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkDebugMarkerMarkerInfoEXT -- ^ pMarkerInfo
       -> IO ()

vkFunCmdDebugMarkerInsertEXT :: VkFun VkCmdDebugMarkerInsertEXT
vkFunCmdDebugMarkerInsertEXT = VkFun (Ptr ("vkCmdDebugMarkerInsertEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdDebugMarkerInsertEXT where

#endif
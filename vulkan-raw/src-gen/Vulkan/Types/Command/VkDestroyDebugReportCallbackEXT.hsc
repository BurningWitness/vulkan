{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_debug_report

module Vulkan.Types.Command.VkDestroyDebugReportCallbackEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroyDebugReportCallbackEXT =
          VkInstance -- ^ instance
       -> VkDebugReportCallbackEXT -- ^ callback
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroyDebugReportCallbackEXT :: VkFun VkDestroyDebugReportCallbackEXT
vkFunDestroyDebugReportCallbackEXT = VkFun (Ptr ("vkDestroyDebugReportCallbackEXT\0"##))

#else

module Vulkan.Types.Command.VkDestroyDebugReportCallbackEXT where

#endif
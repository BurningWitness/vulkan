{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_debug_report

module Vulkan.Types.Command.VkCreateDebugReportCallbackEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkDebugReportCallbackCreateInfoEXT
import Vulkan.Types.VkFun



type VkCreateDebugReportCallbackEXT =
          VkInstance -- ^ instance
       -> Ptr VkDebugReportCallbackCreateInfoEXT -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkDebugReportCallbackEXT -- ^ pCallback
       -> IO VkResult

vkFunCreateDebugReportCallbackEXT :: VkFun VkCreateDebugReportCallbackEXT
vkFunCreateDebugReportCallbackEXT = VkFun (Ptr ("vkCreateDebugReportCallbackEXT\0"##))

#else

module Vulkan.Types.Command.VkCreateDebugReportCallbackEXT where

#endif
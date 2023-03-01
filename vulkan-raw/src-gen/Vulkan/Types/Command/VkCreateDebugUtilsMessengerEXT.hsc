{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_debug_utils

module Vulkan.Types.Command.VkCreateDebugUtilsMessengerEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkDebugUtilsMessengerCreateInfoEXT
import Vulkan.Types.VkFun



type VkCreateDebugUtilsMessengerEXT =
          VkInstance -- ^ instance
       -> Ptr VkDebugUtilsMessengerCreateInfoEXT -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkDebugUtilsMessengerEXT -- ^ pMessenger
       -> IO VkResult

vkFunCreateDebugUtilsMessengerEXT :: VkFun VkCreateDebugUtilsMessengerEXT
vkFunCreateDebugUtilsMessengerEXT = VkFun (Ptr ("vkCreateDebugUtilsMessengerEXT\0"##))

#else

module Vulkan.Types.Command.VkCreateDebugUtilsMessengerEXT where

#endif
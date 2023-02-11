{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_debug_utils

module Vulkan.Types.Command.VkDestroyDebugUtilsMessengerEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroyDebugUtilsMessengerEXT =
          VkInstance -- ^ instance
       -> VkDebugUtilsMessengerEXT -- ^ messenger
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroyDebugUtilsMessengerEXT :: VkFun VkDestroyDebugUtilsMessengerEXT
vkFunDestroyDebugUtilsMessengerEXT = VkFun (Ptr ("vkDestroyDebugUtilsMessengerEXT\0"##))

#else

module Vulkan.Types.Command.VkDestroyDebugUtilsMessengerEXT where

#endif
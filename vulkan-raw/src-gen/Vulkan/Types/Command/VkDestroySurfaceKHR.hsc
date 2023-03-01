{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_surface

module Vulkan.Types.Command.VkDestroySurfaceKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroySurfaceKHR =
          VkInstance -- ^ instance
       -> VkSurfaceKHR -- ^ surface
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroySurfaceKHR :: VkFun VkDestroySurfaceKHR
vkFunDestroySurfaceKHR = VkFun (Ptr ("vkDestroySurfaceKHR\0"##))

#else

module Vulkan.Types.Command.VkDestroySurfaceKHR where

#endif
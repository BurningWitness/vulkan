{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_xlib_surface

module Vulkan.Types.Command.VkCreateXlibSurfaceKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkXlibSurfaceCreateInfoKHR
import Vulkan.Types.VkFun



type VkCreateXlibSurfaceKHR =
          VkInstance -- ^ instance
       -> Ptr VkXlibSurfaceCreateInfoKHR -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkSurfaceKHR -- ^ pSurface
       -> IO VkResult

vkFunCreateXlibSurfaceKHR :: VkFun VkCreateXlibSurfaceKHR
vkFunCreateXlibSurfaceKHR = VkFun (Ptr ("vkCreateXlibSurfaceKHR\0"##))

#else

module Vulkan.Types.Command.VkCreateXlibSurfaceKHR where

#endif
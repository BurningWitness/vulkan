{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_xcb_surface

module Vulkan.Types.Command.VkCreateXcbSurfaceKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkXcbSurfaceCreateInfoKHR
import Vulkan.Types.VkFun



type VkCreateXcbSurfaceKHR =
          VkInstance -- ^ instance
       -> Ptr VkXcbSurfaceCreateInfoKHR -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkSurfaceKHR -- ^ pSurface
       -> IO VkResult

vkFunCreateXcbSurfaceKHR :: VkFun VkCreateXcbSurfaceKHR
vkFunCreateXcbSurfaceKHR = VkFun (Ptr ("vkCreateXcbSurfaceKHR\0"##))

#else

module Vulkan.Types.Command.VkCreateXcbSurfaceKHR where

#endif
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_wayland_surface

module Vulkan.Types.Command.VkCreateWaylandSurfaceKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkWaylandSurfaceCreateInfoKHR
import Vulkan.Types.VkFun



type VkCreateWaylandSurfaceKHR =
          VkInstance -- ^ instance
       -> Ptr VkWaylandSurfaceCreateInfoKHR -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkSurfaceKHR -- ^ pSurface
       -> IO VkResult

vkFunCreateWaylandSurfaceKHR :: VkFun VkCreateWaylandSurfaceKHR
vkFunCreateWaylandSurfaceKHR = VkFun (Ptr ("vkCreateWaylandSurfaceKHR\0"##))

#else

module Vulkan.Types.Command.VkCreateWaylandSurfaceKHR where

#endif
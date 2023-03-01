{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_win32_surface

module Vulkan.Types.Command.VkCreateWin32SurfaceKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkWin32SurfaceCreateInfoKHR
import Vulkan.Types.VkFun



type VkCreateWin32SurfaceKHR =
          VkInstance -- ^ instance
       -> Ptr VkWin32SurfaceCreateInfoKHR -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkSurfaceKHR -- ^ pSurface
       -> IO VkResult

vkFunCreateWin32SurfaceKHR :: VkFun VkCreateWin32SurfaceKHR
vkFunCreateWin32SurfaceKHR = VkFun (Ptr ("vkCreateWin32SurfaceKHR\0"##))

#else

module Vulkan.Types.Command.VkCreateWin32SurfaceKHR where

#endif
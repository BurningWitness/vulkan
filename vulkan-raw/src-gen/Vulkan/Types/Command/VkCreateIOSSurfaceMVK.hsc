{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_MVK_ios_surface

module Vulkan.Types.Command.VkCreateIOSSurfaceMVK where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkIOSSurfaceCreateInfoMVK
import Vulkan.Types.VkFun



type VkCreateIOSSurfaceMVK =
          VkInstance -- ^ instance
       -> Ptr VkIOSSurfaceCreateInfoMVK -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkSurfaceKHR -- ^ pSurface
       -> IO VkResult

vkFunCreateIOSSurfaceMVK :: VkFun VkCreateIOSSurfaceMVK
vkFunCreateIOSSurfaceMVK = VkFun (Ptr ("vkCreateIOSSurfaceMVK\0"##))

#else

module Vulkan.Types.Command.VkCreateIOSSurfaceMVK where

#endif
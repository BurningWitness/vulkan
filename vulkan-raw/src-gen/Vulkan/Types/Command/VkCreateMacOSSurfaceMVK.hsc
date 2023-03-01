{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_MVK_macos_surface

module Vulkan.Types.Command.VkCreateMacOSSurfaceMVK where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkMacOSSurfaceCreateInfoMVK
import Vulkan.Types.VkFun



type VkCreateMacOSSurfaceMVK =
          VkInstance -- ^ instance
       -> Ptr VkMacOSSurfaceCreateInfoMVK -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkSurfaceKHR -- ^ pSurface
       -> IO VkResult

vkFunCreateMacOSSurfaceMVK :: VkFun VkCreateMacOSSurfaceMVK
vkFunCreateMacOSSurfaceMVK = VkFun (Ptr ("vkCreateMacOSSurfaceMVK\0"##))

#else

module Vulkan.Types.Command.VkCreateMacOSSurfaceMVK where

#endif
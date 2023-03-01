{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_metal_surface

module Vulkan.Types.Command.VkCreateMetalSurfaceEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkMetalSurfaceCreateInfoEXT
import Vulkan.Types.VkFun



type VkCreateMetalSurfaceEXT =
          VkInstance -- ^ instance
       -> Ptr VkMetalSurfaceCreateInfoEXT -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkSurfaceKHR -- ^ pSurface
       -> IO VkResult

vkFunCreateMetalSurfaceEXT :: VkFun VkCreateMetalSurfaceEXT
vkFunCreateMetalSurfaceEXT = VkFun (Ptr ("vkCreateMetalSurfaceEXT\0"##))

#else

module Vulkan.Types.Command.VkCreateMetalSurfaceEXT where

#endif
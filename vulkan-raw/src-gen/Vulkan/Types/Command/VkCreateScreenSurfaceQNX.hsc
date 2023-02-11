{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_QNX_screen_surface

module Vulkan.Types.Command.VkCreateScreenSurfaceQNX where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkScreenSurfaceCreateInfoQNX
import Vulkan.Types.VkFun



type VkCreateScreenSurfaceQNX =
          VkInstance -- ^ instance
       -> Ptr VkScreenSurfaceCreateInfoQNX -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkSurfaceKHR -- ^ pSurface
       -> IO VkResult

vkFunCreateScreenSurfaceQNX :: VkFun VkCreateScreenSurfaceQNX
vkFunCreateScreenSurfaceQNX = VkFun (Ptr ("vkCreateScreenSurfaceQNX\0"##))

#else

module Vulkan.Types.Command.VkCreateScreenSurfaceQNX where

#endif
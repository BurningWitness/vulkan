{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_display

module Vulkan.Types.Command.VkCreateDisplayPlaneSurfaceKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkDisplaySurfaceCreateInfoKHR
import Vulkan.Types.VkFun



type VkCreateDisplayPlaneSurfaceKHR =
          VkInstance -- ^ instance
       -> Ptr VkDisplaySurfaceCreateInfoKHR -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkSurfaceKHR -- ^ pSurface
       -> IO VkResult

vkFunCreateDisplayPlaneSurfaceKHR :: VkFun VkCreateDisplayPlaneSurfaceKHR
vkFunCreateDisplayPlaneSurfaceKHR = VkFun (Ptr ("vkCreateDisplayPlaneSurfaceKHR\0"##))

#else

module Vulkan.Types.Command.VkCreateDisplayPlaneSurfaceKHR where

#endif
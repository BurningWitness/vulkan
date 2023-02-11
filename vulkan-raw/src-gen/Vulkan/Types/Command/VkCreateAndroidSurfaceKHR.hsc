{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_android_surface

module Vulkan.Types.Command.VkCreateAndroidSurfaceKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkAndroidSurfaceCreateInfoKHR
import Vulkan.Types.VkFun



type VkCreateAndroidSurfaceKHR =
          VkInstance -- ^ instance
       -> Ptr VkAndroidSurfaceCreateInfoKHR -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkSurfaceKHR -- ^ pSurface
       -> IO VkResult

vkFunCreateAndroidSurfaceKHR :: VkFun VkCreateAndroidSurfaceKHR
vkFunCreateAndroidSurfaceKHR = VkFun (Ptr ("vkCreateAndroidSurfaceKHR\0"##))

#else

module Vulkan.Types.Command.VkCreateAndroidSurfaceKHR where

#endif
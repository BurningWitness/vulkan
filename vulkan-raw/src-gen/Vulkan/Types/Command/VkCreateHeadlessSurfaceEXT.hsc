{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_headless_surface

module Vulkan.Types.Command.VkCreateHeadlessSurfaceEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkHeadlessSurfaceCreateInfoEXT
import Vulkan.Types.VkFun



type VkCreateHeadlessSurfaceEXT =
          VkInstance -- ^ instance
       -> Ptr VkHeadlessSurfaceCreateInfoEXT -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkSurfaceKHR -- ^ pSurface
       -> IO VkResult

vkFunCreateHeadlessSurfaceEXT :: VkFun VkCreateHeadlessSurfaceEXT
vkFunCreateHeadlessSurfaceEXT = VkFun (Ptr ("vkCreateHeadlessSurfaceEXT\0"##))

#else

module Vulkan.Types.Command.VkCreateHeadlessSurfaceEXT where

#endif
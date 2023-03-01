{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_directfb_surface

module Vulkan.Types.Command.VkCreateDirectFBSurfaceEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkDirectFBSurfaceCreateInfoEXT
import Vulkan.Types.VkFun



type VkCreateDirectFBSurfaceEXT =
          VkInstance -- ^ instance
       -> Ptr VkDirectFBSurfaceCreateInfoEXT -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkSurfaceKHR -- ^ pSurface
       -> IO VkResult

vkFunCreateDirectFBSurfaceEXT :: VkFun VkCreateDirectFBSurfaceEXT
vkFunCreateDirectFBSurfaceEXT = VkFun (Ptr ("vkCreateDirectFBSurfaceEXT\0"##))

#else

module Vulkan.Types.Command.VkCreateDirectFBSurfaceEXT where

#endif
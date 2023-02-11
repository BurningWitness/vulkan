{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NN_vi_surface

module Vulkan.Types.Command.VkCreateViSurfaceNN where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkViSurfaceCreateInfoNN
import Vulkan.Types.VkFun



type VkCreateViSurfaceNN =
          VkInstance -- ^ instance
       -> Ptr VkViSurfaceCreateInfoNN -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkSurfaceKHR -- ^ pSurface
       -> IO VkResult

vkFunCreateViSurfaceNN :: VkFun VkCreateViSurfaceNN
vkFunCreateViSurfaceNN = VkFun (Ptr ("vkCreateViSurfaceNN\0"##))

#else

module Vulkan.Types.Command.VkCreateViSurfaceNN where

#endif
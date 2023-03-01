{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_FUCHSIA_imagepipe_surface

module Vulkan.Types.Command.VkCreateImagePipeSurfaceFUCHSIA where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkImagePipeSurfaceCreateInfoFUCHSIA
import Vulkan.Types.VkFun



type VkCreateImagePipeSurfaceFUCHSIA =
          VkInstance -- ^ instance
       -> Ptr VkImagePipeSurfaceCreateInfoFUCHSIA -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkSurfaceKHR -- ^ pSurface
       -> IO VkResult

vkFunCreateImagePipeSurfaceFUCHSIA :: VkFun VkCreateImagePipeSurfaceFUCHSIA
vkFunCreateImagePipeSurfaceFUCHSIA = VkFun (Ptr ("vkCreateImagePipeSurfaceFUCHSIA\0"##))

#else

module Vulkan.Types.Command.VkCreateImagePipeSurfaceFUCHSIA where

#endif
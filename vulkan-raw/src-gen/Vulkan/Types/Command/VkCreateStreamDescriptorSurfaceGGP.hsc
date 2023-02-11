{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_GGP_stream_descriptor_surface

module Vulkan.Types.Command.VkCreateStreamDescriptorSurfaceGGP where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkStreamDescriptorSurfaceCreateInfoGGP
import Vulkan.Types.VkFun



type VkCreateStreamDescriptorSurfaceGGP =
          VkInstance -- ^ instance
       -> Ptr VkStreamDescriptorSurfaceCreateInfoGGP -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkSurfaceKHR -- ^ pSurface
       -> IO VkResult

vkFunCreateStreamDescriptorSurfaceGGP :: VkFun VkCreateStreamDescriptorSurfaceGGP
vkFunCreateStreamDescriptorSurfaceGGP = VkFun (Ptr ("vkCreateStreamDescriptorSurfaceGGP\0"##))

#else

module Vulkan.Types.Command.VkCreateStreamDescriptorSurfaceGGP where

#endif
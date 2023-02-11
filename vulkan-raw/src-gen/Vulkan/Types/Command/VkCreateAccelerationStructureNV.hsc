{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing

module Vulkan.Types.Command.VkCreateAccelerationStructureNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAccelerationStructureCreateInfoNV
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkCreateAccelerationStructureNV =
          VkDevice -- ^ device
       -> Ptr VkAccelerationStructureCreateInfoNV -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkAccelerationStructureNV -- ^ pAccelerationStructure
       -> IO VkResult

vkFunCreateAccelerationStructureNV :: VkFun VkCreateAccelerationStructureNV
vkFunCreateAccelerationStructureNV = VkFun (Ptr ("vkCreateAccelerationStructureNV\0"##))

#else

module Vulkan.Types.Command.VkCreateAccelerationStructureNV where

#endif
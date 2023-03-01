{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_acceleration_structure

module Vulkan.Types.Command.VkCreateAccelerationStructureKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAccelerationStructureCreateInfoKHR
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkCreateAccelerationStructureKHR =
          VkDevice -- ^ device
       -> Ptr VkAccelerationStructureCreateInfoKHR -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkAccelerationStructureKHR -- ^ pAccelerationStructure
       -> IO VkResult

vkFunCreateAccelerationStructureKHR :: VkFun VkCreateAccelerationStructureKHR
vkFunCreateAccelerationStructureKHR = VkFun (Ptr ("vkCreateAccelerationStructureKHR\0"##))

#else

module Vulkan.Types.Command.VkCreateAccelerationStructureKHR where

#endif
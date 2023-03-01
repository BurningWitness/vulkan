{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_acceleration_structure

module Vulkan.Types.Command.VkDestroyAccelerationStructureKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroyAccelerationStructureKHR =
          VkDevice -- ^ device
       -> VkAccelerationStructureKHR -- ^ accelerationStructure
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroyAccelerationStructureKHR :: VkFun VkDestroyAccelerationStructureKHR
vkFunDestroyAccelerationStructureKHR = VkFun (Ptr ("vkDestroyAccelerationStructureKHR\0"##))

#else

module Vulkan.Types.Command.VkDestroyAccelerationStructureKHR where

#endif
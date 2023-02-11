{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_acceleration_structure

module Vulkan.Types.Command.VkGetDeviceAccelerationStructureCompatibilityKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkAccelerationStructureCompatibilityKHR
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAccelerationStructureVersionInfoKHR
import Vulkan.Types.VkFun



type VkGetDeviceAccelerationStructureCompatibilityKHR =
          VkDevice -- ^ device
       -> Ptr VkAccelerationStructureVersionInfoKHR -- ^ pVersionInfo
       -> Ptr VkAccelerationStructureCompatibilityKHR -- ^ pCompatibility
       -> IO ()

vkFunGetDeviceAccelerationStructureCompatibilityKHR :: VkFun VkGetDeviceAccelerationStructureCompatibilityKHR
vkFunGetDeviceAccelerationStructureCompatibilityKHR = VkFun (Ptr ("vkGetDeviceAccelerationStructureCompatibilityKHR\0"##))

#else

module Vulkan.Types.Command.VkGetDeviceAccelerationStructureCompatibilityKHR where

#endif
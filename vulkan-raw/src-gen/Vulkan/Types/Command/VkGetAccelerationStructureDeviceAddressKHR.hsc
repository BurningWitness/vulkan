{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_acceleration_structure

module Vulkan.Types.Command.VkGetAccelerationStructureDeviceAddressKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAccelerationStructureDeviceAddressInfoKHR
import Vulkan.Types.VkFun



type VkGetAccelerationStructureDeviceAddressKHR =
          VkDevice -- ^ device
       -> Ptr VkAccelerationStructureDeviceAddressInfoKHR -- ^ pInfo
       -> IO VkDeviceAddress

vkFunGetAccelerationStructureDeviceAddressKHR :: VkFun VkGetAccelerationStructureDeviceAddressKHR
vkFunGetAccelerationStructureDeviceAddressKHR = VkFun (Ptr ("vkGetAccelerationStructureDeviceAddressKHR\0"##))

#else

module Vulkan.Types.Command.VkGetAccelerationStructureDeviceAddressKHR where

#endif
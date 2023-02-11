{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_cooperative_matrix

module Vulkan.Types.Command.VkGetPhysicalDeviceCooperativeMatrixPropertiesNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkCooperativeMatrixPropertiesNV
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceCooperativeMatrixPropertiesNV =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr #{type uint32_t} -- ^ pPropertyCount
       -> Ptr VkCooperativeMatrixPropertiesNV -- ^ pProperties
       -> IO VkResult

vkFunGetPhysicalDeviceCooperativeMatrixPropertiesNV :: VkFun VkGetPhysicalDeviceCooperativeMatrixPropertiesNV
vkFunGetPhysicalDeviceCooperativeMatrixPropertiesNV = VkFun (Ptr ("vkGetPhysicalDeviceCooperativeMatrixPropertiesNV\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceCooperativeMatrixPropertiesNV where

#endif
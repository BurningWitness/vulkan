{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_external_memory_capabilities

module Vulkan.Types.Command.VkGetPhysicalDeviceExternalImageFormatPropertiesNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagsNV
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkImageCreateFlags
import Vulkan.Types.Enum.VkImageTiling
import Vulkan.Types.Enum.VkImageType
import Vulkan.Types.Enum.VkImageUsageFlags
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkExternalImageFormatPropertiesNV
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceExternalImageFormatPropertiesNV =
          VkPhysicalDevice -- ^ physicalDevice
       -> VkFormat -- ^ format
       -> VkImageType -- ^ type
       -> VkImageTiling -- ^ tiling
       -> VkImageUsageFlags -- ^ usage
       -> VkImageCreateFlags -- ^ flags
       -> VkExternalMemoryHandleTypeFlagsNV -- ^ externalHandleType
       -> Ptr VkExternalImageFormatPropertiesNV -- ^ pExternalImageFormatProperties
       -> IO VkResult

vkFunGetPhysicalDeviceExternalImageFormatPropertiesNV :: VkFun VkGetPhysicalDeviceExternalImageFormatPropertiesNV
vkFunGetPhysicalDeviceExternalImageFormatPropertiesNV = VkFun (Ptr ("vkGetPhysicalDeviceExternalImageFormatPropertiesNV\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceExternalImageFormatPropertiesNV where

#endif
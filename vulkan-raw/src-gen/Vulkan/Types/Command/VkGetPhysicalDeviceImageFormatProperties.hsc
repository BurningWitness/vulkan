{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkGetPhysicalDeviceImageFormatProperties where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkImageCreateFlags
import Vulkan.Types.Enum.VkImageTiling
import Vulkan.Types.Enum.VkImageType
import Vulkan.Types.Enum.VkImageUsageFlags
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkImageFormatProperties
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceImageFormatProperties =
          VkPhysicalDevice -- ^ physicalDevice
       -> VkFormat -- ^ format
       -> VkImageType -- ^ type
       -> VkImageTiling -- ^ tiling
       -> VkImageUsageFlags -- ^ usage
       -> VkImageCreateFlags -- ^ flags
       -> Ptr VkImageFormatProperties -- ^ pImageFormatProperties
       -> IO VkResult

vkFunGetPhysicalDeviceImageFormatProperties :: VkFun VkGetPhysicalDeviceImageFormatProperties
vkFunGetPhysicalDeviceImageFormatProperties = VkFun (Ptr ("vkGetPhysicalDeviceImageFormatProperties\0"##))

foreign import CALLCV "vulkan/vulkan.h vkGetPhysicalDeviceImageFormatProperties"
  vkGetPhysicalDeviceImageFormatProperties
    :: VkGetPhysicalDeviceImageFormatProperties

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetPhysicalDeviceImageFormatProperties"
  vkGetPhysicalDeviceImageFormatPropertiesUnsafe
    :: VkGetPhysicalDeviceImageFormatProperties
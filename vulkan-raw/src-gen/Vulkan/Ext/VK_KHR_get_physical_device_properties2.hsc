{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_physical_device_properties2

module Vulkan.Ext.VK_KHR_get_physical_device_properties2
  ( pattern VK_KHR_GET_PHYSICAL_DEVICE_PROPERTIES_2_SPEC_VERSION
  , pattern VK_KHR_GET_PHYSICAL_DEVICE_PROPERTIES_2_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FEATURES_2_KHR
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROPERTIES_2_KHR
  , pattern VK_STRUCTURE_TYPE_FORMAT_PROPERTIES_2_KHR
  , pattern VK_STRUCTURE_TYPE_IMAGE_FORMAT_PROPERTIES_2_KHR
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_FORMAT_INFO_2_KHR
  , pattern VK_STRUCTURE_TYPE_QUEUE_FAMILY_PROPERTIES_2_KHR
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_PROPERTIES_2_KHR
  , pattern VK_STRUCTURE_TYPE_SPARSE_IMAGE_FORMAT_PROPERTIES_2_KHR
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SPARSE_IMAGE_FORMAT_INFO_2_KHR
  , VkPhysicalDeviceFeatures2KHR
  , VkPhysicalDeviceProperties2KHR
  , VkFormatProperties2KHR
  , VkImageFormatProperties2KHR
  , VkPhysicalDeviceImageFormatInfo2KHR
  , VkQueueFamilyProperties2KHR
  , VkPhysicalDeviceMemoryProperties2KHR
  , VkSparseImageFormatProperties2KHR
  , VkPhysicalDeviceSparseImageFormatInfo2KHR
  , VkGetPhysicalDeviceFeatures2KHR
  , vkFunGetPhysicalDeviceFeatures2KHR
  , VkGetPhysicalDeviceProperties2KHR
  , vkFunGetPhysicalDeviceProperties2KHR
  , VkGetPhysicalDeviceFormatProperties2KHR
  , vkFunGetPhysicalDeviceFormatProperties2KHR
  , VkGetPhysicalDeviceImageFormatProperties2KHR
  , vkFunGetPhysicalDeviceImageFormatProperties2KHR
  , VkGetPhysicalDeviceQueueFamilyProperties2KHR
  , vkFunGetPhysicalDeviceQueueFamilyProperties2KHR
  , VkGetPhysicalDeviceMemoryProperties2KHR
  , vkFunGetPhysicalDeviceMemoryProperties2KHR
  , VkGetPhysicalDeviceSparseImageFormatProperties2KHR
  , vkFunGetPhysicalDeviceSparseImageFormatProperties2KHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkFormatProperties2KHR
import Vulkan.Types.Struct.VkImageFormatProperties2KHR
import Vulkan.Types.Struct.VkPhysicalDeviceFeatures2KHR
import Vulkan.Types.Struct.VkPhysicalDeviceImageFormatInfo2KHR
import Vulkan.Types.Struct.VkPhysicalDeviceMemoryProperties2KHR
import Vulkan.Types.Struct.VkPhysicalDeviceProperties2KHR
import Vulkan.Types.Struct.VkPhysicalDeviceSparseImageFormatInfo2KHR
import Vulkan.Types.Struct.VkQueueFamilyProperties2KHR
import Vulkan.Types.Struct.VkSparseImageFormatProperties2KHR
import Vulkan.Types.Command.VkGetPhysicalDeviceFeatures2KHR
import Vulkan.Types.Command.VkGetPhysicalDeviceFormatProperties2KHR
import Vulkan.Types.Command.VkGetPhysicalDeviceImageFormatProperties2KHR
import Vulkan.Types.Command.VkGetPhysicalDeviceMemoryProperties2KHR
import Vulkan.Types.Command.VkGetPhysicalDeviceProperties2KHR
import Vulkan.Types.Command.VkGetPhysicalDeviceQueueFamilyProperties2KHR
import Vulkan.Types.Command.VkGetPhysicalDeviceSparseImageFormatProperties2KHR
import Vulkan.Types.VkFun



pattern VK_KHR_GET_PHYSICAL_DEVICE_PROPERTIES_2_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_GET_PHYSICAL_DEVICE_PROPERTIES_2_SPEC_VERSION = 2

pattern VK_KHR_GET_PHYSICAL_DEVICE_PROPERTIES_2_EXTENSION_NAME :: CString
pattern VK_KHR_GET_PHYSICAL_DEVICE_PROPERTIES_2_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_GET_PHYSICAL_DEVICE_PROPERTIES_2_EXTENSION_NAME = Ptr ("VK_KHR_get_physical_device_properties2\0"##)

#else

module Vulkan.Ext.VK_KHR_get_physical_device_properties2 where

#endif
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_global_priority

module Vulkan.Ext.VK_KHR_global_priority
  ( pattern VK_KHR_GLOBAL_PRIORITY_SPEC_VERSION
  , pattern VK_KHR_GLOBAL_PRIORITY_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_DEVICE_QUEUE_GLOBAL_PRIORITY_CREATE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_GLOBAL_PRIORITY_QUERY_FEATURES_KHR
  , pattern VK_STRUCTURE_TYPE_QUEUE_FAMILY_GLOBAL_PRIORITY_PROPERTIES_KHR
  , pattern VK_ERROR_NOT_PERMITTED_KHR
  , pattern VK_MAX_GLOBAL_PRIORITY_SIZE_KHR
  , VkDeviceQueueGlobalPriorityCreateInfoKHR (..)
  , VkQueueGlobalPriorityKHR
  , pattern VK_QUEUE_GLOBAL_PRIORITY_LOW_KHR
  , pattern VK_QUEUE_GLOBAL_PRIORITY_MEDIUM_KHR
  , pattern VK_QUEUE_GLOBAL_PRIORITY_HIGH_KHR
  , pattern VK_QUEUE_GLOBAL_PRIORITY_REALTIME_KHR
  , pattern VK_QUEUE_GLOBAL_PRIORITY_LOW_EXT
  , pattern VK_QUEUE_GLOBAL_PRIORITY_MEDIUM_EXT
  , pattern VK_QUEUE_GLOBAL_PRIORITY_HIGH_EXT
  , pattern VK_QUEUE_GLOBAL_PRIORITY_REALTIME_EXT
  , VkPhysicalDeviceGlobalPriorityQueryFeaturesKHR (..)
  , VkQueueFamilyGlobalPriorityPropertiesKHR (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Constant
import Vulkan.Types.Enum.VkQueueGlobalPriorityKHR
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDeviceQueueGlobalPriorityCreateInfoKHR
import Vulkan.Types.Struct.VkPhysicalDeviceGlobalPriorityQueryFeaturesKHR
import Vulkan.Types.Struct.VkQueueFamilyGlobalPriorityPropertiesKHR
import Vulkan.Types.VkFun



pattern VK_KHR_GLOBAL_PRIORITY_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_GLOBAL_PRIORITY_SPEC_VERSION = 1

pattern VK_KHR_GLOBAL_PRIORITY_EXTENSION_NAME :: CString
pattern VK_KHR_GLOBAL_PRIORITY_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_GLOBAL_PRIORITY_EXTENSION_NAME = Ptr ("VK_KHR_global_priority\0"##)

#else

module Vulkan.Ext.VK_KHR_global_priority where

#endif
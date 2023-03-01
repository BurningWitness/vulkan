{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_global_priority_query

module Vulkan.Ext.VK_EXT_global_priority_query
  ( pattern VK_EXT_GLOBAL_PRIORITY_QUERY_SPEC_VERSION
  , pattern VK_EXT_GLOBAL_PRIORITY_QUERY_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_GLOBAL_PRIORITY_QUERY_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_QUEUE_FAMILY_GLOBAL_PRIORITY_PROPERTIES_EXT
  , pattern VK_MAX_GLOBAL_PRIORITY_SIZE_EXT
  , VkPhysicalDeviceGlobalPriorityQueryFeaturesEXT
  , VkQueueFamilyGlobalPriorityPropertiesEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Constant
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceGlobalPriorityQueryFeaturesEXT
import Vulkan.Types.Struct.VkQueueFamilyGlobalPriorityPropertiesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_GLOBAL_PRIORITY_QUERY_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_GLOBAL_PRIORITY_QUERY_SPEC_VERSION = 1

pattern VK_EXT_GLOBAL_PRIORITY_QUERY_EXTENSION_NAME :: CString
pattern VK_EXT_GLOBAL_PRIORITY_QUERY_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_GLOBAL_PRIORITY_QUERY_EXTENSION_NAME = Ptr ("VK_EXT_global_priority_query\0"##)

#else

module Vulkan.Ext.VK_EXT_global_priority_query where

#endif
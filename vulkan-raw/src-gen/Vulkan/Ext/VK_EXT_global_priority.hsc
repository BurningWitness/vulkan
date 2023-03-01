{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_global_priority

module Vulkan.Ext.VK_EXT_global_priority
  ( pattern VK_EXT_GLOBAL_PRIORITY_SPEC_VERSION
  , pattern VK_EXT_GLOBAL_PRIORITY_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_DEVICE_QUEUE_GLOBAL_PRIORITY_CREATE_INFO_EXT
  , pattern VK_ERROR_NOT_PERMITTED_EXT
  , VkDeviceQueueGlobalPriorityCreateInfoEXT
  , VkQueueGlobalPriorityEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkQueueGlobalPriorityEXT
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDeviceQueueGlobalPriorityCreateInfoEXT
import Vulkan.Types.VkFun



pattern VK_EXT_GLOBAL_PRIORITY_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_GLOBAL_PRIORITY_SPEC_VERSION = 2

pattern VK_EXT_GLOBAL_PRIORITY_EXTENSION_NAME :: CString
pattern VK_EXT_GLOBAL_PRIORITY_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_GLOBAL_PRIORITY_EXTENSION_NAME = Ptr ("VK_EXT_global_priority\0"##)

#else

module Vulkan.Ext.VK_EXT_global_priority where

#endif
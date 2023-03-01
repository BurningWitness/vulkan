{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_pageable_device_local_memory

module Vulkan.Ext.VK_EXT_pageable_device_local_memory
  ( pattern VK_EXT_PAGEABLE_DEVICE_LOCAL_MEMORY_SPEC_VERSION
  , pattern VK_EXT_PAGEABLE_DEVICE_LOCAL_MEMORY_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PAGEABLE_DEVICE_LOCAL_MEMORY_FEATURES_EXT
  , VkPhysicalDevicePageableDeviceLocalMemoryFeaturesEXT (..)
  , VkSetDeviceMemoryPriorityEXT
  , vkFunSetDeviceMemoryPriorityEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDevicePageableDeviceLocalMemoryFeaturesEXT
import Vulkan.Types.Command.VkSetDeviceMemoryPriorityEXT
import Vulkan.Types.VkFun



pattern VK_EXT_PAGEABLE_DEVICE_LOCAL_MEMORY_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_PAGEABLE_DEVICE_LOCAL_MEMORY_SPEC_VERSION = 1

pattern VK_EXT_PAGEABLE_DEVICE_LOCAL_MEMORY_EXTENSION_NAME :: CString
pattern VK_EXT_PAGEABLE_DEVICE_LOCAL_MEMORY_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_PAGEABLE_DEVICE_LOCAL_MEMORY_EXTENSION_NAME = Ptr ("VK_EXT_pageable_device_local_memory\0"##)

#else

module Vulkan.Ext.VK_EXT_pageable_device_local_memory where

#endif
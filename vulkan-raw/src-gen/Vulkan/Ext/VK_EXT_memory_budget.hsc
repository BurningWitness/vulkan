{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_memory_budget

module Vulkan.Ext.VK_EXT_memory_budget
  ( pattern VK_EXT_MEMORY_BUDGET_SPEC_VERSION
  , pattern VK_EXT_MEMORY_BUDGET_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_BUDGET_PROPERTIES_EXT
  , VkPhysicalDeviceMemoryBudgetPropertiesEXT (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceMemoryBudgetPropertiesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_MEMORY_BUDGET_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_MEMORY_BUDGET_SPEC_VERSION = 1

pattern VK_EXT_MEMORY_BUDGET_EXTENSION_NAME :: CString
pattern VK_EXT_MEMORY_BUDGET_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_MEMORY_BUDGET_EXTENSION_NAME = Ptr ("VK_EXT_memory_budget\0"##)

#else

module Vulkan.Ext.VK_EXT_memory_budget where

#endif
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_robustness2

module Vulkan.Ext.VK_EXT_robustness2
  ( pattern VK_EXT_ROBUSTNESS_2_SPEC_VERSION
  , pattern VK_EXT_ROBUSTNESS_2_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ROBUSTNESS_2_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ROBUSTNESS_2_PROPERTIES_EXT
  , VkPhysicalDeviceRobustness2FeaturesEXT (..)
  , VkPhysicalDeviceRobustness2PropertiesEXT (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceRobustness2FeaturesEXT
import Vulkan.Types.Struct.VkPhysicalDeviceRobustness2PropertiesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_ROBUSTNESS_2_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_ROBUSTNESS_2_SPEC_VERSION = 1

pattern VK_EXT_ROBUSTNESS_2_EXTENSION_NAME :: CString
pattern VK_EXT_ROBUSTNESS_2_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_ROBUSTNESS_2_EXTENSION_NAME = Ptr ("VK_EXT_robustness2\0"##)

#else

module Vulkan.Ext.VK_EXT_robustness2 where

#endif
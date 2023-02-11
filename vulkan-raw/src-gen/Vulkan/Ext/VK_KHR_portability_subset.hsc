{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_portability_subset

module Vulkan.Ext.VK_KHR_portability_subset
  ( pattern VK_KHR_PORTABILITY_SUBSET_SPEC_VERSION
  , pattern VK_KHR_PORTABILITY_SUBSET_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PORTABILITY_SUBSET_FEATURES_KHR
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PORTABILITY_SUBSET_PROPERTIES_KHR
  , VkPhysicalDevicePortabilitySubsetFeaturesKHR (..)
  , VkPhysicalDevicePortabilitySubsetPropertiesKHR (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDevicePortabilitySubsetFeaturesKHR
import Vulkan.Types.Struct.VkPhysicalDevicePortabilitySubsetPropertiesKHR
import Vulkan.Types.VkFun



pattern VK_KHR_PORTABILITY_SUBSET_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_PORTABILITY_SUBSET_SPEC_VERSION = 1

pattern VK_KHR_PORTABILITY_SUBSET_EXTENSION_NAME :: CString
pattern VK_KHR_PORTABILITY_SUBSET_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_PORTABILITY_SUBSET_EXTENSION_NAME = Ptr ("VK_KHR_portability_subset\0"##)

#else

module Vulkan.Ext.VK_KHR_portability_subset where

#endif
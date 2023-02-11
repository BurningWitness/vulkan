{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_present_id

module Vulkan.Ext.VK_KHR_present_id
  ( pattern VK_KHR_PRESENT_ID_SPEC_VERSION
  , pattern VK_KHR_PRESENT_ID_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PRESENT_ID_KHR
  , VkPresentIdKHR (..)
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRESENT_ID_FEATURES_KHR
  , VkPhysicalDevicePresentIdFeaturesKHR (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDevicePresentIdFeaturesKHR
import Vulkan.Types.Struct.VkPresentIdKHR
import Vulkan.Types.VkFun



pattern VK_KHR_PRESENT_ID_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_PRESENT_ID_SPEC_VERSION = 1

pattern VK_KHR_PRESENT_ID_EXTENSION_NAME :: CString
pattern VK_KHR_PRESENT_ID_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_PRESENT_ID_EXTENSION_NAME = Ptr ("VK_KHR_present_id\0"##)

#else

module Vulkan.Ext.VK_KHR_present_id where

#endif
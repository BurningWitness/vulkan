{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_ray_query

module Vulkan.Ext.VK_KHR_ray_query
  ( pattern VK_KHR_RAY_QUERY_SPEC_VERSION
  , pattern VK_KHR_RAY_QUERY_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_QUERY_FEATURES_KHR
  , VkPhysicalDeviceRayQueryFeaturesKHR (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceRayQueryFeaturesKHR
import Vulkan.Types.VkFun



pattern VK_KHR_RAY_QUERY_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_RAY_QUERY_SPEC_VERSION = 1

pattern VK_KHR_RAY_QUERY_EXTENSION_NAME :: CString
pattern VK_KHR_RAY_QUERY_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_RAY_QUERY_EXTENSION_NAME = Ptr ("VK_KHR_ray_query\0"##)

#else

module Vulkan.Ext.VK_KHR_ray_query where

#endif
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_incremental_present

module Vulkan.Ext.VK_KHR_incremental_present
  ( pattern VK_KHR_INCREMENTAL_PRESENT_SPEC_VERSION
  , pattern VK_KHR_INCREMENTAL_PRESENT_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PRESENT_REGIONS_KHR
  , VkPresentRegionsKHR (..)
  , VkPresentRegionKHR (..)
  , VkRectLayerKHR (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPresentRegionKHR
import Vulkan.Types.Struct.VkPresentRegionsKHR
import Vulkan.Types.Struct.VkRectLayerKHR
import Vulkan.Types.VkFun



pattern VK_KHR_INCREMENTAL_PRESENT_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_INCREMENTAL_PRESENT_SPEC_VERSION = 2

pattern VK_KHR_INCREMENTAL_PRESENT_EXTENSION_NAME :: CString
pattern VK_KHR_INCREMENTAL_PRESENT_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_INCREMENTAL_PRESENT_EXTENSION_NAME = Ptr ("VK_KHR_incremental_present\0"##)

#else

module Vulkan.Ext.VK_KHR_incremental_present where

#endif
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_index_type_uint8

module Vulkan.Ext.VK_EXT_index_type_uint8
  ( pattern VK_EXT_INDEX_TYPE_UINT8_SPEC_VERSION
  , pattern VK_EXT_INDEX_TYPE_UINT8_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INDEX_TYPE_UINT8_FEATURES_EXT
  , pattern VK_INDEX_TYPE_UINT8_EXT
  , VkPhysicalDeviceIndexTypeUint8FeaturesEXT (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkIndexType
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceIndexTypeUint8FeaturesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_INDEX_TYPE_UINT8_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_INDEX_TYPE_UINT8_SPEC_VERSION = 1

pattern VK_EXT_INDEX_TYPE_UINT8_EXTENSION_NAME :: CString
pattern VK_EXT_INDEX_TYPE_UINT8_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_INDEX_TYPE_UINT8_EXTENSION_NAME = Ptr ("VK_EXT_index_type_uint8\0"##)

#else

module Vulkan.Ext.VK_EXT_index_type_uint8 where

#endif
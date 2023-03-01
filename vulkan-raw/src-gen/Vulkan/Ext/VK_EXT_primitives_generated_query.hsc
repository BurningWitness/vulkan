{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_primitives_generated_query

module Vulkan.Ext.VK_EXT_primitives_generated_query
  ( pattern VK_EXT_PRIMITIVES_GENERATED_QUERY_SPEC_VERSION
  , pattern VK_EXT_PRIMITIVES_GENERATED_QUERY_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRIMITIVES_GENERATED_QUERY_FEATURES_EXT
  , pattern VK_QUERY_TYPE_PRIMITIVES_GENERATED_EXT
  , VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkQueryType
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_PRIMITIVES_GENERATED_QUERY_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_PRIMITIVES_GENERATED_QUERY_SPEC_VERSION = 1

pattern VK_EXT_PRIMITIVES_GENERATED_QUERY_EXTENSION_NAME :: CString
pattern VK_EXT_PRIMITIVES_GENERATED_QUERY_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_PRIMITIVES_GENERATED_QUERY_EXTENSION_NAME = Ptr ("VK_EXT_primitives_generated_query\0"##)

#else

module Vulkan.Ext.VK_EXT_primitives_generated_query where

#endif
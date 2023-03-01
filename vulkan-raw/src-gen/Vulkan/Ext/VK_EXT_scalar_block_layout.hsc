{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_scalar_block_layout

module Vulkan.Ext.VK_EXT_scalar_block_layout
  ( pattern VK_EXT_SCALAR_BLOCK_LAYOUT_SPEC_VERSION
  , pattern VK_EXT_SCALAR_BLOCK_LAYOUT_EXTENSION_NAME
  , VkPhysicalDeviceScalarBlockLayoutFeaturesEXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SCALAR_BLOCK_LAYOUT_FEATURES_EXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceScalarBlockLayoutFeaturesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_SCALAR_BLOCK_LAYOUT_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_SCALAR_BLOCK_LAYOUT_SPEC_VERSION = 1

pattern VK_EXT_SCALAR_BLOCK_LAYOUT_EXTENSION_NAME :: CString
pattern VK_EXT_SCALAR_BLOCK_LAYOUT_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_SCALAR_BLOCK_LAYOUT_EXTENSION_NAME = Ptr ("VK_EXT_scalar_block_layout\0"##)

#else

module Vulkan.Ext.VK_EXT_scalar_block_layout where

#endif
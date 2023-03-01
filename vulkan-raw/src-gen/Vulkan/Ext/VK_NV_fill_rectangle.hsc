{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_fill_rectangle

module Vulkan.Ext.VK_NV_fill_rectangle
  ( pattern VK_NV_FILL_RECTANGLE_SPEC_VERSION
  , pattern VK_NV_FILL_RECTANGLE_EXTENSION_NAME
  , pattern VK_POLYGON_MODE_FILL_RECTANGLE_NV
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkPolygonMode
import Vulkan.Types.VkFun



pattern VK_NV_FILL_RECTANGLE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_FILL_RECTANGLE_SPEC_VERSION = 1

pattern VK_NV_FILL_RECTANGLE_EXTENSION_NAME :: CString
pattern VK_NV_FILL_RECTANGLE_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_FILL_RECTANGLE_EXTENSION_NAME = Ptr ("VK_NV_fill_rectangle\0"##)

#else

module Vulkan.Ext.VK_NV_fill_rectangle where

#endif
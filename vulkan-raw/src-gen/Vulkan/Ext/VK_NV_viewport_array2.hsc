{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_viewport_array2

module Vulkan.Ext.VK_NV_viewport_array2
  ( pattern VK_NV_VIEWPORT_ARRAY_2_SPEC_VERSION
  , pattern VK_NV_VIEWPORT_ARRAY_2_EXTENSION_NAME
  , pattern VK_NV_VIEWPORT_ARRAY2_SPEC_VERSION
  , pattern VK_NV_VIEWPORT_ARRAY2_EXTENSION_NAME
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.VkFun



pattern VK_NV_VIEWPORT_ARRAY_2_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_VIEWPORT_ARRAY_2_SPEC_VERSION = 1

pattern VK_NV_VIEWPORT_ARRAY_2_EXTENSION_NAME :: CString
pattern VK_NV_VIEWPORT_ARRAY_2_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_VIEWPORT_ARRAY_2_EXTENSION_NAME = Ptr ("VK_NV_viewport_array2\0"##)

-- | Backwards-compatible alias containing a typo
pattern VK_NV_VIEWPORT_ARRAY2_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_VIEWPORT_ARRAY2_SPEC_VERSION = VK_NV_VIEWPORT_ARRAY_2_SPEC_VERSION

-- | Backwards-compatible alias containing a typo
pattern VK_NV_VIEWPORT_ARRAY2_EXTENSION_NAME :: CString
pattern VK_NV_VIEWPORT_ARRAY2_EXTENSION_NAME = VK_NV_VIEWPORT_ARRAY_2_EXTENSION_NAME

#else

module Vulkan.Ext.VK_NV_viewport_array2 where

#endif
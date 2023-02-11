{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_AMD_negative_viewport_height

module Vulkan.Ext.VK_AMD_negative_viewport_height
  ( pattern VK_AMD_NEGATIVE_VIEWPORT_HEIGHT_SPEC_VERSION
  , pattern VK_AMD_NEGATIVE_VIEWPORT_HEIGHT_EXTENSION_NAME
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.VkFun



pattern VK_AMD_NEGATIVE_VIEWPORT_HEIGHT_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_AMD_NEGATIVE_VIEWPORT_HEIGHT_SPEC_VERSION = 1

pattern VK_AMD_NEGATIVE_VIEWPORT_HEIGHT_EXTENSION_NAME :: CString
pattern VK_AMD_NEGATIVE_VIEWPORT_HEIGHT_EXTENSION_NAME <- (const False -> True)
  where
    VK_AMD_NEGATIVE_VIEWPORT_HEIGHT_EXTENSION_NAME = Ptr ("VK_AMD_negative_viewport_height\0"##)

#else

module Vulkan.Ext.VK_AMD_negative_viewport_height where

#endif
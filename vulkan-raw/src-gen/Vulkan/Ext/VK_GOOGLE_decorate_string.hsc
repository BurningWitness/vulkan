{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_GOOGLE_decorate_string

module Vulkan.Ext.VK_GOOGLE_decorate_string
  ( pattern VK_GOOGLE_DECORATE_STRING_SPEC_VERSION
  , pattern VK_GOOGLE_DECORATE_STRING_EXTENSION_NAME
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.VkFun



pattern VK_GOOGLE_DECORATE_STRING_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_GOOGLE_DECORATE_STRING_SPEC_VERSION = 1

pattern VK_GOOGLE_DECORATE_STRING_EXTENSION_NAME :: CString
pattern VK_GOOGLE_DECORATE_STRING_EXTENSION_NAME <- (const False -> True)
  where
    VK_GOOGLE_DECORATE_STRING_EXTENSION_NAME = Ptr ("VK_GOOGLE_decorate_string\0"##)

#else

module Vulkan.Ext.VK_GOOGLE_decorate_string where

#endif
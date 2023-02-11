{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_GOOGLE_surfaceless_query

module Vulkan.Ext.VK_GOOGLE_surfaceless_query
  ( pattern VK_GOOGLE_SURFACELESS_QUERY_SPEC_VERSION
  , pattern VK_GOOGLE_SURFACELESS_QUERY_EXTENSION_NAME
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.VkFun



pattern VK_GOOGLE_SURFACELESS_QUERY_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_GOOGLE_SURFACELESS_QUERY_SPEC_VERSION = 2

pattern VK_GOOGLE_SURFACELESS_QUERY_EXTENSION_NAME :: CString
pattern VK_GOOGLE_SURFACELESS_QUERY_EXTENSION_NAME <- (const False -> True)
  where
    VK_GOOGLE_SURFACELESS_QUERY_EXTENSION_NAME = Ptr ("VK_GOOGLE_surfaceless_query\0"##)

#else

module Vulkan.Ext.VK_GOOGLE_surfaceless_query where

#endif
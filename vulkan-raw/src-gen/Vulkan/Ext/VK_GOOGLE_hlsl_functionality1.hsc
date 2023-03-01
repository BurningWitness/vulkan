{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_GOOGLE_hlsl_functionality1

module Vulkan.Ext.VK_GOOGLE_hlsl_functionality1
  ( pattern VK_GOOGLE_HLSL_FUNCTIONALITY_1_SPEC_VERSION
  , pattern VK_GOOGLE_HLSL_FUNCTIONALITY_1_EXTENSION_NAME
  , pattern VK_GOOGLE_HLSL_FUNCTIONALITY1_SPEC_VERSION
  , pattern VK_GOOGLE_HLSL_FUNCTIONALITY1_EXTENSION_NAME
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.VkFun



pattern VK_GOOGLE_HLSL_FUNCTIONALITY_1_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_GOOGLE_HLSL_FUNCTIONALITY_1_SPEC_VERSION = 1

pattern VK_GOOGLE_HLSL_FUNCTIONALITY_1_EXTENSION_NAME :: CString
pattern VK_GOOGLE_HLSL_FUNCTIONALITY_1_EXTENSION_NAME <- (const False -> True)
  where
    VK_GOOGLE_HLSL_FUNCTIONALITY_1_EXTENSION_NAME = Ptr ("VK_GOOGLE_hlsl_functionality1\0"##)

-- | Backwards-compatible alias containing a typo
pattern VK_GOOGLE_HLSL_FUNCTIONALITY1_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_GOOGLE_HLSL_FUNCTIONALITY1_SPEC_VERSION = VK_GOOGLE_HLSL_FUNCTIONALITY_1_SPEC_VERSION

-- | Backwards-compatible alias containing a typo
pattern VK_GOOGLE_HLSL_FUNCTIONALITY1_EXTENSION_NAME :: CString
pattern VK_GOOGLE_HLSL_FUNCTIONALITY1_EXTENSION_NAME = VK_GOOGLE_HLSL_FUNCTIONALITY_1_EXTENSION_NAME

#else

module Vulkan.Ext.VK_GOOGLE_hlsl_functionality1 where

#endif
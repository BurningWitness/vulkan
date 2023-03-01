{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_depth_range_unrestricted

module Vulkan.Ext.VK_EXT_depth_range_unrestricted
  ( pattern VK_EXT_DEPTH_RANGE_UNRESTRICTED_SPEC_VERSION
  , pattern VK_EXT_DEPTH_RANGE_UNRESTRICTED_EXTENSION_NAME
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.VkFun



pattern VK_EXT_DEPTH_RANGE_UNRESTRICTED_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_DEPTH_RANGE_UNRESTRICTED_SPEC_VERSION = 1

pattern VK_EXT_DEPTH_RANGE_UNRESTRICTED_EXTENSION_NAME :: CString
pattern VK_EXT_DEPTH_RANGE_UNRESTRICTED_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_DEPTH_RANGE_UNRESTRICTED_EXTENSION_NAME = Ptr ("VK_EXT_depth_range_unrestricted\0"##)

#else

module Vulkan.Ext.VK_EXT_depth_range_unrestricted where

#endif
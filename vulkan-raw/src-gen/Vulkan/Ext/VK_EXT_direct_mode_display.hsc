{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_direct_mode_display

module Vulkan.Ext.VK_EXT_direct_mode_display
  ( pattern VK_EXT_DIRECT_MODE_DISPLAY_SPEC_VERSION
  , pattern VK_EXT_DIRECT_MODE_DISPLAY_EXTENSION_NAME
  , VkReleaseDisplayEXT
  , vkFunReleaseDisplayEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Command.VkReleaseDisplayEXT
import Vulkan.Types.VkFun



pattern VK_EXT_DIRECT_MODE_DISPLAY_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_DIRECT_MODE_DISPLAY_SPEC_VERSION = 1

pattern VK_EXT_DIRECT_MODE_DISPLAY_EXTENSION_NAME :: CString
pattern VK_EXT_DIRECT_MODE_DISPLAY_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_DIRECT_MODE_DISPLAY_EXTENSION_NAME = Ptr ("VK_EXT_direct_mode_display\0"##)

#else

module Vulkan.Ext.VK_EXT_direct_mode_display where

#endif
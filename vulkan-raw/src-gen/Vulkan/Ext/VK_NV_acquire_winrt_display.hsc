{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_acquire_winrt_display

module Vulkan.Ext.VK_NV_acquire_winrt_display
  ( pattern VK_NV_ACQUIRE_WINRT_DISPLAY_SPEC_VERSION
  , pattern VK_NV_ACQUIRE_WINRT_DISPLAY_EXTENSION_NAME
  , VkAcquireWinrtDisplayNV
  , vkFunAcquireWinrtDisplayNV
  , VkGetWinrtDisplayNV
  , vkFunGetWinrtDisplayNV
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Command.VkAcquireWinrtDisplayNV
import Vulkan.Types.Command.VkGetWinrtDisplayNV
import Vulkan.Types.VkFun



pattern VK_NV_ACQUIRE_WINRT_DISPLAY_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_ACQUIRE_WINRT_DISPLAY_SPEC_VERSION = 1

pattern VK_NV_ACQUIRE_WINRT_DISPLAY_EXTENSION_NAME :: CString
pattern VK_NV_ACQUIRE_WINRT_DISPLAY_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_ACQUIRE_WINRT_DISPLAY_EXTENSION_NAME = Ptr ("VK_NV_acquire_winrt_display\0"##)

#else

module Vulkan.Ext.VK_NV_acquire_winrt_display where

#endif
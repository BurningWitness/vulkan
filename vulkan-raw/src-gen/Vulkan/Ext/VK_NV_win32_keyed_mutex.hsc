{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_win32_keyed_mutex

module Vulkan.Ext.VK_NV_win32_keyed_mutex
  ( pattern VK_NV_WIN32_KEYED_MUTEX_SPEC_VERSION
  , pattern VK_NV_WIN32_KEYED_MUTEX_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_WIN32_KEYED_MUTEX_ACQUIRE_RELEASE_INFO_NV
  , VkWin32KeyedMutexAcquireReleaseInfoNV (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkWin32KeyedMutexAcquireReleaseInfoNV
import Vulkan.Types.VkFun



pattern VK_NV_WIN32_KEYED_MUTEX_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_WIN32_KEYED_MUTEX_SPEC_VERSION = 2

pattern VK_NV_WIN32_KEYED_MUTEX_EXTENSION_NAME :: CString
pattern VK_NV_WIN32_KEYED_MUTEX_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_WIN32_KEYED_MUTEX_EXTENSION_NAME = Ptr ("VK_NV_win32_keyed_mutex\0"##)

#else

module Vulkan.Ext.VK_NV_win32_keyed_mutex where

#endif
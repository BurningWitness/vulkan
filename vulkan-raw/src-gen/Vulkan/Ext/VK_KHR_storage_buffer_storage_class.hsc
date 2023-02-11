{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_storage_buffer_storage_class

module Vulkan.Ext.VK_KHR_storage_buffer_storage_class
  ( pattern VK_KHR_STORAGE_BUFFER_STORAGE_CLASS_SPEC_VERSION
  , pattern VK_KHR_STORAGE_BUFFER_STORAGE_CLASS_EXTENSION_NAME
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.VkFun



pattern VK_KHR_STORAGE_BUFFER_STORAGE_CLASS_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_STORAGE_BUFFER_STORAGE_CLASS_SPEC_VERSION = 1

pattern VK_KHR_STORAGE_BUFFER_STORAGE_CLASS_EXTENSION_NAME :: CString
pattern VK_KHR_STORAGE_BUFFER_STORAGE_CLASS_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_STORAGE_BUFFER_STORAGE_CLASS_EXTENSION_NAME = Ptr ("VK_KHR_storage_buffer_storage_class\0"##)

#else

module Vulkan.Ext.VK_KHR_storage_buffer_storage_class where

#endif
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_AMD_buffer_marker

module Vulkan.Ext.VK_AMD_buffer_marker
  ( pattern VK_AMD_BUFFER_MARKER_SPEC_VERSION
  , pattern VK_AMD_BUFFER_MARKER_EXTENSION_NAME
  , VkCmdWriteBufferMarkerAMD
  , vkFunCmdWriteBufferMarkerAMD
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Command.VkCmdWriteBufferMarkerAMD
import Vulkan.Types.VkFun



pattern VK_AMD_BUFFER_MARKER_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_AMD_BUFFER_MARKER_SPEC_VERSION = 1

pattern VK_AMD_BUFFER_MARKER_EXTENSION_NAME :: CString
pattern VK_AMD_BUFFER_MARKER_EXTENSION_NAME <- (const False -> True)
  where
    VK_AMD_BUFFER_MARKER_EXTENSION_NAME = Ptr ("VK_AMD_buffer_marker\0"##)

#else

module Vulkan.Ext.VK_AMD_buffer_marker where

#endif
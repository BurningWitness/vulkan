{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_IMG_format_pvrtc

module Vulkan.Ext.VK_IMG_format_pvrtc
  ( pattern VK_IMG_FORMAT_PVRTC_SPEC_VERSION
  , pattern VK_IMG_FORMAT_PVRTC_EXTENSION_NAME
  , pattern VK_FORMAT_PVRTC1_2BPP_UNORM_BLOCK_IMG
  , pattern VK_FORMAT_PVRTC1_4BPP_UNORM_BLOCK_IMG
  , pattern VK_FORMAT_PVRTC2_2BPP_UNORM_BLOCK_IMG
  , pattern VK_FORMAT_PVRTC2_4BPP_UNORM_BLOCK_IMG
  , pattern VK_FORMAT_PVRTC1_2BPP_SRGB_BLOCK_IMG
  , pattern VK_FORMAT_PVRTC1_4BPP_SRGB_BLOCK_IMG
  , pattern VK_FORMAT_PVRTC2_2BPP_SRGB_BLOCK_IMG
  , pattern VK_FORMAT_PVRTC2_4BPP_SRGB_BLOCK_IMG
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.VkFun



pattern VK_IMG_FORMAT_PVRTC_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_IMG_FORMAT_PVRTC_SPEC_VERSION = 1

pattern VK_IMG_FORMAT_PVRTC_EXTENSION_NAME :: CString
pattern VK_IMG_FORMAT_PVRTC_EXTENSION_NAME <- (const False -> True)
  where
    VK_IMG_FORMAT_PVRTC_EXTENSION_NAME = Ptr ("VK_IMG_format_pvrtc\0"##)

#else

module Vulkan.Ext.VK_IMG_format_pvrtc where

#endif
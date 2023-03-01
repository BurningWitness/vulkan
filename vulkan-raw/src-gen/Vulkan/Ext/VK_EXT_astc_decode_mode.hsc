{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_astc_decode_mode

module Vulkan.Ext.VK_EXT_astc_decode_mode
  ( pattern VK_EXT_ASTC_DECODE_MODE_SPEC_VERSION
  , pattern VK_EXT_ASTC_DECODE_MODE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_IMAGE_VIEW_ASTC_DECODE_MODE_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ASTC_DECODE_FEATURES_EXT
  , VkImageViewASTCDecodeModeEXT (..)
  , VkPhysicalDeviceASTCDecodeFeaturesEXT (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkImageViewASTCDecodeModeEXT
import Vulkan.Types.Struct.VkPhysicalDeviceASTCDecodeFeaturesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_ASTC_DECODE_MODE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_ASTC_DECODE_MODE_SPEC_VERSION = 1

pattern VK_EXT_ASTC_DECODE_MODE_EXTENSION_NAME :: CString
pattern VK_EXT_ASTC_DECODE_MODE_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_ASTC_DECODE_MODE_EXTENSION_NAME = Ptr ("VK_EXT_astc_decode_mode\0"##)

#else

module Vulkan.Ext.VK_EXT_astc_decode_mode where

#endif
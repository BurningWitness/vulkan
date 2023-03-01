{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_hdr_metadata

module Vulkan.Ext.VK_EXT_hdr_metadata
  ( pattern VK_EXT_HDR_METADATA_SPEC_VERSION
  , pattern VK_EXT_HDR_METADATA_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_HDR_METADATA_EXT
  , VkHdrMetadataEXT (..)
  , VkXYColorEXT (..)
  , VkSetHdrMetadataEXT
  , vkFunSetHdrMetadataEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkHdrMetadataEXT
import Vulkan.Types.Struct.VkXYColorEXT
import Vulkan.Types.Command.VkSetHdrMetadataEXT
import Vulkan.Types.VkFun



pattern VK_EXT_HDR_METADATA_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_HDR_METADATA_SPEC_VERSION = 2

pattern VK_EXT_HDR_METADATA_EXTENSION_NAME :: CString
pattern VK_EXT_HDR_METADATA_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_HDR_METADATA_EXTENSION_NAME = Ptr ("VK_EXT_hdr_metadata\0"##)

#else

module Vulkan.Ext.VK_EXT_hdr_metadata where

#endif
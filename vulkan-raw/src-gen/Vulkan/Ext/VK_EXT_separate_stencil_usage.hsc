{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_separate_stencil_usage

module Vulkan.Ext.VK_EXT_separate_stencil_usage
  ( pattern VK_EXT_SEPARATE_STENCIL_USAGE_SPEC_VERSION
  , pattern VK_EXT_SEPARATE_STENCIL_USAGE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_IMAGE_STENCIL_USAGE_CREATE_INFO_EXT
  , VkImageStencilUsageCreateInfoEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkImageStencilUsageCreateInfoEXT
import Vulkan.Types.VkFun



pattern VK_EXT_SEPARATE_STENCIL_USAGE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_SEPARATE_STENCIL_USAGE_SPEC_VERSION = 1

pattern VK_EXT_SEPARATE_STENCIL_USAGE_EXTENSION_NAME :: CString
pattern VK_EXT_SEPARATE_STENCIL_USAGE_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_SEPARATE_STENCIL_USAGE_EXTENSION_NAME = Ptr ("VK_EXT_separate_stencil_usage\0"##)

#else

module Vulkan.Ext.VK_EXT_separate_stencil_usage where

#endif
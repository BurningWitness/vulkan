{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_validation_flags

module Vulkan.Ext.VK_EXT_validation_flags
  ( pattern VK_EXT_VALIDATION_FLAGS_SPEC_VERSION
  , pattern VK_EXT_VALIDATION_FLAGS_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_VALIDATION_FLAGS_EXT
  , VkValidationFlagsEXT (..)
  , VkValidationCheckEXT
  , pattern VK_VALIDATION_CHECK_ALL_EXT
  , pattern VK_VALIDATION_CHECK_SHADERS_EXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkValidationCheckEXT
import Vulkan.Types.Struct.VkValidationFlagsEXT
import Vulkan.Types.VkFun



pattern VK_EXT_VALIDATION_FLAGS_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_VALIDATION_FLAGS_SPEC_VERSION = 2

pattern VK_EXT_VALIDATION_FLAGS_EXTENSION_NAME :: CString
pattern VK_EXT_VALIDATION_FLAGS_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_VALIDATION_FLAGS_EXTENSION_NAME = Ptr ("VK_EXT_validation_flags\0"##)

#else

module Vulkan.Ext.VK_EXT_validation_flags where

#endif
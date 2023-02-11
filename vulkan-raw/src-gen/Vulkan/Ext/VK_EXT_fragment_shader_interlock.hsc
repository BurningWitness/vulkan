{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_fragment_shader_interlock

module Vulkan.Ext.VK_EXT_fragment_shader_interlock
  ( pattern VK_EXT_FRAGMENT_SHADER_INTERLOCK_SPEC_VERSION
  , pattern VK_EXT_FRAGMENT_SHADER_INTERLOCK_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_INTERLOCK_FEATURES_EXT
  , VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_FRAGMENT_SHADER_INTERLOCK_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_FRAGMENT_SHADER_INTERLOCK_SPEC_VERSION = 1

pattern VK_EXT_FRAGMENT_SHADER_INTERLOCK_EXTENSION_NAME :: CString
pattern VK_EXT_FRAGMENT_SHADER_INTERLOCK_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_FRAGMENT_SHADER_INTERLOCK_EXTENSION_NAME = Ptr ("VK_EXT_fragment_shader_interlock\0"##)

#else

module Vulkan.Ext.VK_EXT_fragment_shader_interlock where

#endif
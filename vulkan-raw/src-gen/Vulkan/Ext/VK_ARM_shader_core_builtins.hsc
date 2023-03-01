{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_ARM_shader_core_builtins

module Vulkan.Ext.VK_ARM_shader_core_builtins
  ( pattern VK_ARM_SHADER_CORE_BUILTINS_SPEC_VERSION
  , pattern VK_ARM_SHADER_CORE_BUILTINS_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CORE_BUILTINS_FEATURES_ARM
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CORE_BUILTINS_PROPERTIES_ARM
  , VkPhysicalDeviceShaderCoreBuiltinsFeaturesARM (..)
  , VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceShaderCoreBuiltinsFeaturesARM
import Vulkan.Types.Struct.VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM
import Vulkan.Types.VkFun



pattern VK_ARM_SHADER_CORE_BUILTINS_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_ARM_SHADER_CORE_BUILTINS_SPEC_VERSION = 2

pattern VK_ARM_SHADER_CORE_BUILTINS_EXTENSION_NAME :: CString
pattern VK_ARM_SHADER_CORE_BUILTINS_EXTENSION_NAME <- (const False -> True)
  where
    VK_ARM_SHADER_CORE_BUILTINS_EXTENSION_NAME = Ptr ("VK_ARM_shader_core_builtins\0"##)

#else

module Vulkan.Ext.VK_ARM_shader_core_builtins where

#endif
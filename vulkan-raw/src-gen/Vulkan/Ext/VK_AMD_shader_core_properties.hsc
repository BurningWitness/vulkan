{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_AMD_shader_core_properties

module Vulkan.Ext.VK_AMD_shader_core_properties
  ( pattern VK_AMD_SHADER_CORE_PROPERTIES_SPEC_VERSION
  , pattern VK_AMD_SHADER_CORE_PROPERTIES_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CORE_PROPERTIES_AMD
  , VkPhysicalDeviceShaderCorePropertiesAMD (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceShaderCorePropertiesAMD
import Vulkan.Types.VkFun



pattern VK_AMD_SHADER_CORE_PROPERTIES_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_AMD_SHADER_CORE_PROPERTIES_SPEC_VERSION = 2

pattern VK_AMD_SHADER_CORE_PROPERTIES_EXTENSION_NAME :: CString
pattern VK_AMD_SHADER_CORE_PROPERTIES_EXTENSION_NAME <- (const False -> True)
  where
    VK_AMD_SHADER_CORE_PROPERTIES_EXTENSION_NAME = Ptr ("VK_AMD_shader_core_properties\0"##)

#else

module Vulkan.Ext.VK_AMD_shader_core_properties where

#endif
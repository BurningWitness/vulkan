{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_shader_sm_builtins

module Vulkan.Ext.VK_NV_shader_sm_builtins
  ( pattern VK_NV_SHADER_SM_BUILTINS_SPEC_VERSION
  , pattern VK_NV_SHADER_SM_BUILTINS_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SM_BUILTINS_FEATURES_NV
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SM_BUILTINS_PROPERTIES_NV
  , VkPhysicalDeviceShaderSMBuiltinsPropertiesNV (..)
  , VkPhysicalDeviceShaderSMBuiltinsFeaturesNV (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceShaderSMBuiltinsFeaturesNV
import Vulkan.Types.Struct.VkPhysicalDeviceShaderSMBuiltinsPropertiesNV
import Vulkan.Types.VkFun



pattern VK_NV_SHADER_SM_BUILTINS_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_SHADER_SM_BUILTINS_SPEC_VERSION = 1

pattern VK_NV_SHADER_SM_BUILTINS_EXTENSION_NAME :: CString
pattern VK_NV_SHADER_SM_BUILTINS_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_SHADER_SM_BUILTINS_EXTENSION_NAME = Ptr ("VK_NV_shader_sm_builtins\0"##)

#else

module Vulkan.Ext.VK_NV_shader_sm_builtins where

#endif
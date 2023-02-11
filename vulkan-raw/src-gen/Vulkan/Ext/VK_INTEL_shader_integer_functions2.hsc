{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_INTEL_shader_integer_functions2

module Vulkan.Ext.VK_INTEL_shader_integer_functions2
  ( pattern VK_INTEL_SHADER_INTEGER_FUNCTIONS_2_SPEC_VERSION
  , pattern VK_INTEL_SHADER_INTEGER_FUNCTIONS_2_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_FUNCTIONS_2_FEATURES_INTEL
  , VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL
import Vulkan.Types.VkFun



pattern VK_INTEL_SHADER_INTEGER_FUNCTIONS_2_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_INTEL_SHADER_INTEGER_FUNCTIONS_2_SPEC_VERSION = 1

pattern VK_INTEL_SHADER_INTEGER_FUNCTIONS_2_EXTENSION_NAME :: CString
pattern VK_INTEL_SHADER_INTEGER_FUNCTIONS_2_EXTENSION_NAME <- (const False -> True)
  where
    VK_INTEL_SHADER_INTEGER_FUNCTIONS_2_EXTENSION_NAME = Ptr ("VK_INTEL_shader_integer_functions2\0"##)

#else

module Vulkan.Ext.VK_INTEL_shader_integer_functions2 where

#endif
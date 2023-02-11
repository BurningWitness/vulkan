{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_AMD_shader_early_and_late_fragment_tests

module Vulkan.Ext.VK_AMD_shader_early_and_late_fragment_tests
  ( pattern VK_AMD_SHADER_EARLY_AND_LATE_FRAGMENT_TESTS_SPEC_VERSION
  , pattern VK_AMD_SHADER_EARLY_AND_LATE_FRAGMENT_TESTS_EXTENSION_NAME
  , VkPhysicalDeviceShaderEarlyAndLateFragmentTestsFeaturesAMD (..)
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_EARLY_AND_LATE_FRAGMENT_TESTS_FEATURES_AMD
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceShaderEarlyAndLateFragmentTestsFeaturesAMD
import Vulkan.Types.VkFun



pattern VK_AMD_SHADER_EARLY_AND_LATE_FRAGMENT_TESTS_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_AMD_SHADER_EARLY_AND_LATE_FRAGMENT_TESTS_SPEC_VERSION = 1

pattern VK_AMD_SHADER_EARLY_AND_LATE_FRAGMENT_TESTS_EXTENSION_NAME :: CString
pattern VK_AMD_SHADER_EARLY_AND_LATE_FRAGMENT_TESTS_EXTENSION_NAME <- (const False -> True)
  where
    VK_AMD_SHADER_EARLY_AND_LATE_FRAGMENT_TESTS_EXTENSION_NAME = Ptr ("VK_AMD_shader_early_and_late_fragment_tests\0"##)

#else

module Vulkan.Ext.VK_AMD_shader_early_and_late_fragment_tests where

#endif
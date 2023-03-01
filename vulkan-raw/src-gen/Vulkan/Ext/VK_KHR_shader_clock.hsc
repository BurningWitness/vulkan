{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_shader_clock

module Vulkan.Ext.VK_KHR_shader_clock
  ( pattern VK_KHR_SHADER_CLOCK_SPEC_VERSION
  , pattern VK_KHR_SHADER_CLOCK_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CLOCK_FEATURES_KHR
  , VkPhysicalDeviceShaderClockFeaturesKHR (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceShaderClockFeaturesKHR
import Vulkan.Types.VkFun



pattern VK_KHR_SHADER_CLOCK_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_SHADER_CLOCK_SPEC_VERSION = 1

pattern VK_KHR_SHADER_CLOCK_EXTENSION_NAME :: CString
pattern VK_KHR_SHADER_CLOCK_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_SHADER_CLOCK_EXTENSION_NAME = Ptr ("VK_KHR_shader_clock\0"##)

#else

module Vulkan.Ext.VK_KHR_shader_clock where

#endif
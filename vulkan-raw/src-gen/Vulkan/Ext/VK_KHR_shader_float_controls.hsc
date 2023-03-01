{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_shader_float_controls

module Vulkan.Ext.VK_KHR_shader_float_controls
  ( pattern VK_KHR_SHADER_FLOAT_CONTROLS_SPEC_VERSION
  , pattern VK_KHR_SHADER_FLOAT_CONTROLS_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FLOAT_CONTROLS_PROPERTIES_KHR
  , VkPhysicalDeviceFloatControlsPropertiesKHR
  , VkShaderFloatControlsIndependenceKHR
  , pattern VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_32_BIT_ONLY_KHR
  , pattern VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_ALL_KHR
  , pattern VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_NONE_KHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkShaderFloatControlsIndependence
import Vulkan.Types.Enum.VkShaderFloatControlsIndependenceKHR
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceFloatControlsPropertiesKHR
import Vulkan.Types.VkFun



pattern VK_KHR_SHADER_FLOAT_CONTROLS_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_SHADER_FLOAT_CONTROLS_SPEC_VERSION = 4

pattern VK_KHR_SHADER_FLOAT_CONTROLS_EXTENSION_NAME :: CString
pattern VK_KHR_SHADER_FLOAT_CONTROLS_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_SHADER_FLOAT_CONTROLS_EXTENSION_NAME = Ptr ("VK_KHR_shader_float_controls\0"##)

#else

module Vulkan.Ext.VK_KHR_shader_float_controls where

#endif
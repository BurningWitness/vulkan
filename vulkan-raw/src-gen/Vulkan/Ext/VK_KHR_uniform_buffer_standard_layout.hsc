{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_uniform_buffer_standard_layout

module Vulkan.Ext.VK_KHR_uniform_buffer_standard_layout
  ( pattern VK_KHR_UNIFORM_BUFFER_STANDARD_LAYOUT_SPEC_VERSION
  , pattern VK_KHR_UNIFORM_BUFFER_STANDARD_LAYOUT_EXTENSION_NAME
  , VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHR
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_UNIFORM_BUFFER_STANDARD_LAYOUT_FEATURES_KHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHR
import Vulkan.Types.VkFun



pattern VK_KHR_UNIFORM_BUFFER_STANDARD_LAYOUT_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_UNIFORM_BUFFER_STANDARD_LAYOUT_SPEC_VERSION = 1

pattern VK_KHR_UNIFORM_BUFFER_STANDARD_LAYOUT_EXTENSION_NAME :: CString
pattern VK_KHR_UNIFORM_BUFFER_STANDARD_LAYOUT_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_UNIFORM_BUFFER_STANDARD_LAYOUT_EXTENSION_NAME = Ptr ("VK_KHR_uniform_buffer_standard_layout\0"##)

#else

module Vulkan.Ext.VK_KHR_uniform_buffer_standard_layout where

#endif
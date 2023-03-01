{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_surface_maintenance1

module Vulkan.Ext.VK_EXT_surface_maintenance1
  ( pattern VK_EXT_SURFACE_MAINTENANCE_1_SPEC_VERSION
  , pattern VK_EXT_SURFACE_MAINTENANCE_1_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_SURFACE_PRESENT_MODE_EXT
  , pattern VK_STRUCTURE_TYPE_SURFACE_PRESENT_SCALING_CAPABILITIES_EXT
  , pattern VK_STRUCTURE_TYPE_SURFACE_PRESENT_MODE_COMPATIBILITY_EXT
  , VkSurfacePresentModeEXT (..)
  , VkPresentScalingFlagBitsEXT
  , pattern VK_PRESENT_SCALING_ONE_TO_ONE_BIT_EXT
  , pattern VK_PRESENT_SCALING_ASPECT_RATIO_STRETCH_BIT_EXT
  , pattern VK_PRESENT_SCALING_STRETCH_BIT_EXT
  , VkPresentScalingFlagsEXT
  , VkPresentGravityFlagBitsEXT
  , pattern VK_PRESENT_GRAVITY_MIN_BIT_EXT
  , pattern VK_PRESENT_GRAVITY_MAX_BIT_EXT
  , pattern VK_PRESENT_GRAVITY_CENTERED_BIT_EXT
  , VkPresentGravityFlagsEXT
  , VkSurfacePresentScalingCapabilitiesEXT (..)
  , VkSurfacePresentModeCompatibilityEXT (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkPresentGravityFlagBitsEXT
import Vulkan.Types.Enum.VkPresentGravityFlagsEXT
import Vulkan.Types.Enum.VkPresentScalingFlagBitsEXT
import Vulkan.Types.Enum.VkPresentScalingFlagsEXT
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkSurfacePresentModeCompatibilityEXT
import Vulkan.Types.Struct.VkSurfacePresentModeEXT
import Vulkan.Types.Struct.VkSurfacePresentScalingCapabilitiesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_SURFACE_MAINTENANCE_1_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_SURFACE_MAINTENANCE_1_SPEC_VERSION = 1

pattern VK_EXT_SURFACE_MAINTENANCE_1_EXTENSION_NAME :: CString
pattern VK_EXT_SURFACE_MAINTENANCE_1_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_SURFACE_MAINTENANCE_1_EXTENSION_NAME = Ptr ("VK_EXT_surface_maintenance1\0"##)

#else

module Vulkan.Ext.VK_EXT_surface_maintenance1 where

#endif
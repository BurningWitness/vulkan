{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_display_surface_counter

module Vulkan.Ext.VK_EXT_display_surface_counter
  ( pattern VK_EXT_DISPLAY_SURFACE_COUNTER_SPEC_VERSION
  , pattern VK_EXT_DISPLAY_SURFACE_COUNTER_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_SURFACE_CAPABILITIES_2_EXT
  , pattern VK_STRUCTURE_TYPE_SURFACE_CAPABILITIES2_EXT
  , VkSurfaceCounterFlagsEXT
  , VkSurfaceCounterFlagBitsEXT
  , pattern VK_SURFACE_COUNTER_VBLANK_BIT_EXT
  , pattern VK_SURFACE_COUNTER_VBLANK_EXT
  , VkSurfaceCapabilities2EXT (..)
  , VkGetPhysicalDeviceSurfaceCapabilities2EXT
  , vkFunGetPhysicalDeviceSurfaceCapabilities2EXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkSurfaceCounterFlagBitsEXT
import Vulkan.Types.Enum.VkSurfaceCounterFlagsEXT
import Vulkan.Types.Struct.VkSurfaceCapabilities2EXT
import Vulkan.Types.Command.VkGetPhysicalDeviceSurfaceCapabilities2EXT
import Vulkan.Types.VkFun



pattern VK_EXT_DISPLAY_SURFACE_COUNTER_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_DISPLAY_SURFACE_COUNTER_SPEC_VERSION = 1

pattern VK_EXT_DISPLAY_SURFACE_COUNTER_EXTENSION_NAME :: CString
pattern VK_EXT_DISPLAY_SURFACE_COUNTER_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_DISPLAY_SURFACE_COUNTER_EXTENSION_NAME = Ptr ("VK_EXT_display_surface_counter\0"##)

#else

module Vulkan.Ext.VK_EXT_display_surface_counter where

#endif
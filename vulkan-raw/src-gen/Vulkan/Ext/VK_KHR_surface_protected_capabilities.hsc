{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_surface_protected_capabilities

module Vulkan.Ext.VK_KHR_surface_protected_capabilities
  ( pattern VK_KHR_SURFACE_PROTECTED_CAPABILITIES_SPEC_VERSION
  , pattern VK_KHR_SURFACE_PROTECTED_CAPABILITIES_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_SURFACE_PROTECTED_CAPABILITIES_KHR
  , VkSurfaceProtectedCapabilitiesKHR (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkSurfaceProtectedCapabilitiesKHR
import Vulkan.Types.VkFun



pattern VK_KHR_SURFACE_PROTECTED_CAPABILITIES_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_SURFACE_PROTECTED_CAPABILITIES_SPEC_VERSION = 1

pattern VK_KHR_SURFACE_PROTECTED_CAPABILITIES_EXTENSION_NAME :: CString
pattern VK_KHR_SURFACE_PROTECTED_CAPABILITIES_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_SURFACE_PROTECTED_CAPABILITIES_EXTENSION_NAME = Ptr ("VK_KHR_surface_protected_capabilities\0"##)

#else

module Vulkan.Ext.VK_KHR_surface_protected_capabilities where

#endif
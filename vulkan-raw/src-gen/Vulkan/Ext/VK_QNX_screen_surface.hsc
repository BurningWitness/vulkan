{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_QNX_screen_surface

module Vulkan.Ext.VK_QNX_screen_surface
  ( pattern VK_QNX_SCREEN_SURFACE_SPEC_VERSION
  , pattern VK_QNX_SCREEN_SURFACE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_SCREEN_SURFACE_CREATE_INFO_QNX
  , VkScreenSurfaceCreateFlagsQNX
  , VkScreenSurfaceCreateInfoQNX (..)
  , VkCreateScreenSurfaceQNX
  , vkFunCreateScreenSurfaceQNX
  , VkGetPhysicalDeviceScreenPresentationSupportQNX
  , vkFunGetPhysicalDeviceScreenPresentationSupportQNX
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkScreenSurfaceCreateFlagsQNX
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkScreenSurfaceCreateInfoQNX
import Vulkan.Types.Command.VkCreateScreenSurfaceQNX
import Vulkan.Types.Command.VkGetPhysicalDeviceScreenPresentationSupportQNX
import Vulkan.Types.VkFun



pattern VK_QNX_SCREEN_SURFACE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_QNX_SCREEN_SURFACE_SPEC_VERSION = 1

pattern VK_QNX_SCREEN_SURFACE_EXTENSION_NAME :: CString
pattern VK_QNX_SCREEN_SURFACE_EXTENSION_NAME <- (const False -> True)
  where
    VK_QNX_SCREEN_SURFACE_EXTENSION_NAME = Ptr ("VK_QNX_screen_surface\0"##)

#else

module Vulkan.Ext.VK_QNX_screen_surface where

#endif
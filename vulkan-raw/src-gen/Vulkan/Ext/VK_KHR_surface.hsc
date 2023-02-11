{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_surface

module Vulkan.Ext.VK_KHR_surface
  ( pattern VK_KHR_SURFACE_SPEC_VERSION
  , pattern VK_KHR_SURFACE_EXTENSION_NAME
  , pattern VK_ERROR_SURFACE_LOST_KHR
  , pattern VK_ERROR_NATIVE_WINDOW_IN_USE_KHR
  , pattern VK_OBJECT_TYPE_SURFACE_KHR
  , VkSurfaceKHR_T
  , VkSurfaceKHR
  , VkSurfaceTransformFlagBitsKHR
  , pattern VK_SURFACE_TRANSFORM_IDENTITY_BIT_KHR
  , pattern VK_SURFACE_TRANSFORM_ROTATE_90_BIT_KHR
  , pattern VK_SURFACE_TRANSFORM_ROTATE_180_BIT_KHR
  , pattern VK_SURFACE_TRANSFORM_ROTATE_270_BIT_KHR
  , pattern VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_BIT_KHR
  , pattern VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_90_BIT_KHR
  , pattern VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_180_BIT_KHR
  , pattern VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_270_BIT_KHR
  , pattern VK_SURFACE_TRANSFORM_INHERIT_BIT_KHR
  , VkPresentModeKHR
  , pattern VK_PRESENT_MODE_IMMEDIATE_KHR
  , pattern VK_PRESENT_MODE_MAILBOX_KHR
  , pattern VK_PRESENT_MODE_FIFO_KHR
  , pattern VK_PRESENT_MODE_FIFO_RELAXED_KHR
  , VkColorSpaceKHR
  , pattern VK_COLOR_SPACE_SRGB_NONLINEAR_KHR
  , pattern VK_COLORSPACE_SRGB_NONLINEAR_KHR
  , VkCompositeAlphaFlagBitsKHR
  , pattern VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR
  , pattern VK_COMPOSITE_ALPHA_PRE_MULTIPLIED_BIT_KHR
  , pattern VK_COMPOSITE_ALPHA_POST_MULTIPLIED_BIT_KHR
  , pattern VK_COMPOSITE_ALPHA_INHERIT_BIT_KHR
  , VkCompositeAlphaFlagsKHR
  , VkSurfaceCapabilitiesKHR (..)
  , VkSurfaceFormatKHR (..)
  , VkDestroySurfaceKHR
  , vkFunDestroySurfaceKHR
  , VkGetPhysicalDeviceSurfaceSupportKHR
  , vkFunGetPhysicalDeviceSurfaceSupportKHR
  , VkGetPhysicalDeviceSurfaceCapabilitiesKHR
  , vkFunGetPhysicalDeviceSurfaceCapabilitiesKHR
  , VkGetPhysicalDeviceSurfaceFormatsKHR
  , vkFunGetPhysicalDeviceSurfaceFormatsKHR
  , VkGetPhysicalDeviceSurfacePresentModesKHR
  , vkFunGetPhysicalDeviceSurfacePresentModesKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkColorSpaceKHR
import Vulkan.Types.Enum.VkCompositeAlphaFlagBitsKHR
import Vulkan.Types.Enum.VkCompositeAlphaFlagsKHR
import Vulkan.Types.Enum.VkObjectType
import Vulkan.Types.Enum.VkPresentModeKHR
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Enum.VkSurfaceTransformFlagBitsKHR
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkSurfaceCapabilitiesKHR
import Vulkan.Types.Struct.VkSurfaceFormatKHR
import Vulkan.Types.Command.VkDestroySurfaceKHR
import Vulkan.Types.Command.VkGetPhysicalDeviceSurfaceCapabilitiesKHR
import Vulkan.Types.Command.VkGetPhysicalDeviceSurfaceFormatsKHR
import Vulkan.Types.Command.VkGetPhysicalDeviceSurfacePresentModesKHR
import Vulkan.Types.Command.VkGetPhysicalDeviceSurfaceSupportKHR
import Vulkan.Types.VkFun



pattern VK_KHR_SURFACE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_SURFACE_SPEC_VERSION = 25

pattern VK_KHR_SURFACE_EXTENSION_NAME :: CString
pattern VK_KHR_SURFACE_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_SURFACE_EXTENSION_NAME = Ptr ("VK_KHR_surface\0"##)

#else

module Vulkan.Ext.VK_KHR_surface where

#endif
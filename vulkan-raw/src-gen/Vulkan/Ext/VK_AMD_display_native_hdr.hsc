{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_AMD_display_native_hdr

module Vulkan.Ext.VK_AMD_display_native_hdr
  ( pattern VK_AMD_DISPLAY_NATIVE_HDR_SPEC_VERSION
  , pattern VK_AMD_DISPLAY_NATIVE_HDR_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_DISPLAY_NATIVE_HDR_SURFACE_CAPABILITIES_AMD
  , pattern VK_STRUCTURE_TYPE_SWAPCHAIN_DISPLAY_NATIVE_HDR_CREATE_INFO_AMD
  , pattern VK_COLOR_SPACE_DISPLAY_NATIVE_AMD
  , VkDisplayNativeHdrSurfaceCapabilitiesAMD (..)
  , VkSwapchainDisplayNativeHdrCreateInfoAMD (..)
  , VkSetLocalDimmingAMD
  , vkFunSetLocalDimmingAMD
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkColorSpaceKHR
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDisplayNativeHdrSurfaceCapabilitiesAMD
import Vulkan.Types.Struct.VkSwapchainDisplayNativeHdrCreateInfoAMD
import Vulkan.Types.Command.VkSetLocalDimmingAMD
import Vulkan.Types.VkFun



pattern VK_AMD_DISPLAY_NATIVE_HDR_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_AMD_DISPLAY_NATIVE_HDR_SPEC_VERSION = 1

pattern VK_AMD_DISPLAY_NATIVE_HDR_EXTENSION_NAME :: CString
pattern VK_AMD_DISPLAY_NATIVE_HDR_EXTENSION_NAME <- (const False -> True)
  where
    VK_AMD_DISPLAY_NATIVE_HDR_EXTENSION_NAME = Ptr ("VK_AMD_display_native_hdr\0"##)

#else

module Vulkan.Ext.VK_AMD_display_native_hdr where

#endif
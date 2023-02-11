{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_depth_stencil_resolve

module Vulkan.Ext.VK_KHR_depth_stencil_resolve
  ( pattern VK_KHR_DEPTH_STENCIL_RESOLVE_SPEC_VERSION
  , pattern VK_KHR_DEPTH_STENCIL_RESOLVE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_STENCIL_RESOLVE_PROPERTIES_KHR
  , pattern VK_STRUCTURE_TYPE_SUBPASS_DESCRIPTION_DEPTH_STENCIL_RESOLVE_KHR
  , VkSubpassDescriptionDepthStencilResolveKHR
  , VkPhysicalDeviceDepthStencilResolvePropertiesKHR
  , VkResolveModeFlagBitsKHR
  , VkResolveModeFlagsKHR
  , pattern VK_RESOLVE_MODE_NONE_KHR
  , pattern VK_RESOLVE_MODE_SAMPLE_ZERO_BIT_KHR
  , pattern VK_RESOLVE_MODE_AVERAGE_BIT_KHR
  , pattern VK_RESOLVE_MODE_MIN_BIT_KHR
  , pattern VK_RESOLVE_MODE_MAX_BIT_KHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkResolveModeFlagBits
import Vulkan.Types.Enum.VkResolveModeFlagBitsKHR
import Vulkan.Types.Enum.VkResolveModeFlagsKHR
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceDepthStencilResolvePropertiesKHR
import Vulkan.Types.Struct.VkSubpassDescriptionDepthStencilResolveKHR
import Vulkan.Types.VkFun



pattern VK_KHR_DEPTH_STENCIL_RESOLVE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_DEPTH_STENCIL_RESOLVE_SPEC_VERSION = 1

pattern VK_KHR_DEPTH_STENCIL_RESOLVE_EXTENSION_NAME :: CString
pattern VK_KHR_DEPTH_STENCIL_RESOLVE_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_DEPTH_STENCIL_RESOLVE_EXTENSION_NAME = Ptr ("VK_KHR_depth_stencil_resolve\0"##)

#else

module Vulkan.Ext.VK_KHR_depth_stencil_resolve where

#endif
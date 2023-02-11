{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_present_barrier

module Vulkan.Ext.VK_NV_present_barrier
  ( pattern VK_NV_PRESENT_BARRIER_SPEC_VERSION
  , pattern VK_NV_PRESENT_BARRIER_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRESENT_BARRIER_FEATURES_NV
  , pattern VK_STRUCTURE_TYPE_SURFACE_CAPABILITIES_PRESENT_BARRIER_NV
  , pattern VK_STRUCTURE_TYPE_SWAPCHAIN_PRESENT_BARRIER_CREATE_INFO_NV
  , VkPhysicalDevicePresentBarrierFeaturesNV (..)
  , VkSurfaceCapabilitiesPresentBarrierNV (..)
  , VkSwapchainPresentBarrierCreateInfoNV (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDevicePresentBarrierFeaturesNV
import Vulkan.Types.Struct.VkSurfaceCapabilitiesPresentBarrierNV
import Vulkan.Types.Struct.VkSwapchainPresentBarrierCreateInfoNV
import Vulkan.Types.VkFun



pattern VK_NV_PRESENT_BARRIER_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_PRESENT_BARRIER_SPEC_VERSION = 1

pattern VK_NV_PRESENT_BARRIER_EXTENSION_NAME :: CString
pattern VK_NV_PRESENT_BARRIER_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_PRESENT_BARRIER_EXTENSION_NAME = Ptr ("VK_NV_present_barrier\0"##)

#else

module Vulkan.Ext.VK_NV_present_barrier where

#endif
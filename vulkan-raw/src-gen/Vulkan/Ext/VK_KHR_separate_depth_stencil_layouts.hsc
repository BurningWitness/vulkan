{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_separate_depth_stencil_layouts

module Vulkan.Ext.VK_KHR_separate_depth_stencil_layouts
  ( pattern VK_KHR_SEPARATE_DEPTH_STENCIL_LAYOUTS_SPEC_VERSION
  , pattern VK_KHR_SEPARATE_DEPTH_STENCIL_LAYOUTS_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SEPARATE_DEPTH_STENCIL_LAYOUTS_FEATURES_KHR
  , pattern VK_STRUCTURE_TYPE_ATTACHMENT_REFERENCE_STENCIL_LAYOUT_KHR
  , pattern VK_STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_STENCIL_LAYOUT_KHR
  , pattern VK_IMAGE_LAYOUT_DEPTH_ATTACHMENT_OPTIMAL_KHR
  , pattern VK_IMAGE_LAYOUT_DEPTH_READ_ONLY_OPTIMAL_KHR
  , pattern VK_IMAGE_LAYOUT_STENCIL_ATTACHMENT_OPTIMAL_KHR
  , pattern VK_IMAGE_LAYOUT_STENCIL_READ_ONLY_OPTIMAL_KHR
  , VkPhysicalDeviceSeparateDepthStencilLayoutsFeaturesKHR
  , VkAttachmentReferenceStencilLayoutKHR
  , VkAttachmentDescriptionStencilLayoutKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkAttachmentDescriptionStencilLayoutKHR
import Vulkan.Types.Struct.VkAttachmentReferenceStencilLayoutKHR
import Vulkan.Types.Struct.VkPhysicalDeviceSeparateDepthStencilLayoutsFeaturesKHR
import Vulkan.Types.VkFun



pattern VK_KHR_SEPARATE_DEPTH_STENCIL_LAYOUTS_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_SEPARATE_DEPTH_STENCIL_LAYOUTS_SPEC_VERSION = 1

pattern VK_KHR_SEPARATE_DEPTH_STENCIL_LAYOUTS_EXTENSION_NAME :: CString
pattern VK_KHR_SEPARATE_DEPTH_STENCIL_LAYOUTS_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_SEPARATE_DEPTH_STENCIL_LAYOUTS_EXTENSION_NAME = Ptr ("VK_KHR_separate_depth_stencil_layouts\0"##)

#else

module Vulkan.Ext.VK_KHR_separate_depth_stencil_layouts where

#endif
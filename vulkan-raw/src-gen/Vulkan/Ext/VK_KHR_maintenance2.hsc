{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_maintenance2

module Vulkan.Ext.VK_KHR_maintenance2
  ( pattern VK_KHR_MAINTENANCE_2_SPEC_VERSION
  , pattern VK_KHR_MAINTENANCE_2_EXTENSION_NAME
  , pattern VK_KHR_MAINTENANCE2_SPEC_VERSION
  , pattern VK_KHR_MAINTENANCE2_EXTENSION_NAME
  , pattern VK_IMAGE_CREATE_BLOCK_TEXEL_VIEW_COMPATIBLE_BIT_KHR
  , pattern VK_IMAGE_CREATE_EXTENDED_USAGE_BIT_KHR
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_POINT_CLIPPING_PROPERTIES_KHR
  , pattern VK_STRUCTURE_TYPE_RENDER_PASS_INPUT_ATTACHMENT_ASPECT_CREATE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_IMAGE_VIEW_USAGE_CREATE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_DOMAIN_ORIGIN_STATE_CREATE_INFO_KHR
  , pattern VK_IMAGE_LAYOUT_DEPTH_READ_ONLY_STENCIL_ATTACHMENT_OPTIMAL_KHR
  , pattern VK_IMAGE_LAYOUT_DEPTH_ATTACHMENT_STENCIL_READ_ONLY_OPTIMAL_KHR
  , VkPhysicalDevicePointClippingPropertiesKHR
  , VkPointClippingBehaviorKHR
  , pattern VK_POINT_CLIPPING_BEHAVIOR_ALL_CLIP_PLANES_KHR
  , pattern VK_POINT_CLIPPING_BEHAVIOR_USER_CLIP_PLANES_ONLY_KHR
  , VkRenderPassInputAttachmentAspectCreateInfoKHR
  , VkInputAttachmentAspectReferenceKHR
  , VkImageViewUsageCreateInfoKHR
  , VkTessellationDomainOriginKHR
  , pattern VK_TESSELLATION_DOMAIN_ORIGIN_UPPER_LEFT_KHR
  , pattern VK_TESSELLATION_DOMAIN_ORIGIN_LOWER_LEFT_KHR
  , VkPipelineTessellationDomainOriginStateCreateInfoKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkImageCreateFlagBits
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkPointClippingBehavior
import Vulkan.Types.Enum.VkPointClippingBehaviorKHR
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkTessellationDomainOrigin
import Vulkan.Types.Enum.VkTessellationDomainOriginKHR
import Vulkan.Types.Struct.VkImageViewUsageCreateInfoKHR
import Vulkan.Types.Struct.VkInputAttachmentAspectReferenceKHR
import Vulkan.Types.Struct.VkPhysicalDevicePointClippingPropertiesKHR
import Vulkan.Types.Struct.VkPipelineTessellationDomainOriginStateCreateInfoKHR
import Vulkan.Types.Struct.VkRenderPassInputAttachmentAspectCreateInfoKHR
import Vulkan.Types.VkFun



pattern VK_KHR_MAINTENANCE_2_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_MAINTENANCE_2_SPEC_VERSION = 1

pattern VK_KHR_MAINTENANCE_2_EXTENSION_NAME :: CString
pattern VK_KHR_MAINTENANCE_2_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_MAINTENANCE_2_EXTENSION_NAME = Ptr ("VK_KHR_maintenance2\0"##)

-- | Backwards-compatible alias containing a typo
pattern VK_KHR_MAINTENANCE2_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_MAINTENANCE2_SPEC_VERSION = VK_KHR_MAINTENANCE_2_SPEC_VERSION

-- | Backwards-compatible alias containing a typo
pattern VK_KHR_MAINTENANCE2_EXTENSION_NAME :: CString
pattern VK_KHR_MAINTENANCE2_EXTENSION_NAME = VK_KHR_MAINTENANCE_2_EXTENSION_NAME

#else

module Vulkan.Ext.VK_KHR_maintenance2 where

#endif
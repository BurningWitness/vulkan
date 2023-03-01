{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_ARM_rasterization_order_attachment_access

module Vulkan.Ext.VK_ARM_rasterization_order_attachment_access
  ( pattern VK_ARM_RASTERIZATION_ORDER_ATTACHMENT_ACCESS_SPEC_VERSION
  , pattern VK_ARM_RASTERIZATION_ORDER_ATTACHMENT_ACCESS_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RASTERIZATION_ORDER_ATTACHMENT_ACCESS_FEATURES_ARM
  , VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesARM
  , pattern VK_PIPELINE_COLOR_BLEND_STATE_CREATE_RASTERIZATION_ORDER_ATTACHMENT_ACCESS_BIT_ARM
  , pattern VK_PIPELINE_DEPTH_STENCIL_STATE_CREATE_RASTERIZATION_ORDER_ATTACHMENT_DEPTH_ACCESS_BIT_ARM
  , pattern VK_PIPELINE_DEPTH_STENCIL_STATE_CREATE_RASTERIZATION_ORDER_ATTACHMENT_STENCIL_ACCESS_BIT_ARM
  , pattern VK_SUBPASS_DESCRIPTION_RASTERIZATION_ORDER_ATTACHMENT_COLOR_ACCESS_BIT_ARM
  , pattern VK_SUBPASS_DESCRIPTION_RASTERIZATION_ORDER_ATTACHMENT_DEPTH_ACCESS_BIT_ARM
  , pattern VK_SUBPASS_DESCRIPTION_RASTERIZATION_ORDER_ATTACHMENT_STENCIL_ACCESS_BIT_ARM
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkPipelineColorBlendStateCreateFlagBits
import Vulkan.Types.Enum.VkPipelineDepthStencilStateCreateFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkSubpassDescriptionFlagBits
import Vulkan.Types.Struct.VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesARM
import Vulkan.Types.VkFun



pattern VK_ARM_RASTERIZATION_ORDER_ATTACHMENT_ACCESS_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_ARM_RASTERIZATION_ORDER_ATTACHMENT_ACCESS_SPEC_VERSION = 1

pattern VK_ARM_RASTERIZATION_ORDER_ATTACHMENT_ACCESS_EXTENSION_NAME :: CString
pattern VK_ARM_RASTERIZATION_ORDER_ATTACHMENT_ACCESS_EXTENSION_NAME <- (const False -> True)
  where
    VK_ARM_RASTERIZATION_ORDER_ATTACHMENT_ACCESS_EXTENSION_NAME = Ptr ("VK_ARM_rasterization_order_attachment_access\0"##)

#else

module Vulkan.Ext.VK_ARM_rasterization_order_attachment_access where

#endif
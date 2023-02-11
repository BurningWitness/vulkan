{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_dynamic_rendering

module Vulkan.Ext.VK_KHR_dynamic_rendering
  ( pattern VK_KHR_DYNAMIC_RENDERING_SPEC_VERSION
  , pattern VK_KHR_DYNAMIC_RENDERING_EXTENSION_NAME
  , VkCmdBeginRenderingKHR
  , vkFunCmdBeginRenderingKHR
  , VkCmdEndRenderingKHR
  , vkFunCmdEndRenderingKHR
  , pattern VK_STRUCTURE_TYPE_RENDERING_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_RENDERING_ATTACHMENT_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_PIPELINE_RENDERING_CREATE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DYNAMIC_RENDERING_FEATURES_KHR
  , pattern VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_RENDERING_INFO_KHR
  , pattern VK_ATTACHMENT_STORE_OP_NONE_KHR
  , VkRenderingInfoKHR
  , VkRenderingAttachmentInfoKHR
  , VkPipelineRenderingCreateInfoKHR
  , VkPhysicalDeviceDynamicRenderingFeaturesKHR
  , VkCommandBufferInheritanceRenderingInfoKHR
  , VkRenderingFlagsKHR
  , VkRenderingFlagBitsKHR
#if VK_KHR_fragment_shading_rate
  , pattern VK_PIPELINE_CREATE_RENDERING_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR
  , pattern VK_PIPELINE_RASTERIZATION_STATE_CREATE_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR
  , pattern VK_STRUCTURE_TYPE_RENDERING_FRAGMENT_SHADING_RATE_ATTACHMENT_INFO_KHR
  , VkRenderingFragmentShadingRateAttachmentInfoKHR (..)
#endif
#if VK_EXT_fragment_density_map
  , pattern VK_PIPELINE_CREATE_RENDERING_FRAGMENT_DENSITY_MAP_ATTACHMENT_BIT_EXT
  , pattern VK_PIPELINE_RASTERIZATION_STATE_CREATE_FRAGMENT_DENSITY_MAP_ATTACHMENT_BIT_EXT
  , pattern VK_STRUCTURE_TYPE_RENDERING_FRAGMENT_DENSITY_MAP_ATTACHMENT_INFO_EXT
  , VkRenderingFragmentDensityMapAttachmentInfoEXT (..)
#endif
#if VK_AMD_mixed_attachment_samples
  , pattern VK_STRUCTURE_TYPE_ATTACHMENT_SAMPLE_COUNT_INFO_AMD
  , VkAttachmentSampleCountInfoAMD (..)
#endif
#if VK_NV_framebuffer_mixed_samples
  , pattern VK_STRUCTURE_TYPE_ATTACHMENT_SAMPLE_COUNT_INFO_NV
  , VkAttachmentSampleCountInfoNV
#endif
#if VK_NVX_multiview_per_view_attributes
  , pattern VK_STRUCTURE_TYPE_MULTIVIEW_PER_VIEW_ATTRIBUTES_INFO_NVX
  , VkMultiviewPerViewAttributesInfoNVX (..)
#endif
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkAttachmentStoreOp
import Vulkan.Types.Enum.VkPipelineCreateFlagBits
import Vulkan.Types.Enum.VkRenderingFlagBitsKHR
import Vulkan.Types.Enum.VkRenderingFlagsKHR
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkAttachmentSampleCountInfoAMD
import Vulkan.Types.Struct.VkAttachmentSampleCountInfoNV
import Vulkan.Types.Struct.VkCommandBufferInheritanceRenderingInfoKHR
import Vulkan.Types.Struct.VkMultiviewPerViewAttributesInfoNVX
import Vulkan.Types.Struct.VkPhysicalDeviceDynamicRenderingFeaturesKHR
import Vulkan.Types.Struct.VkPipelineRenderingCreateInfoKHR
import Vulkan.Types.Struct.VkRenderingAttachmentInfoKHR
import Vulkan.Types.Struct.VkRenderingFragmentDensityMapAttachmentInfoEXT
import Vulkan.Types.Struct.VkRenderingFragmentShadingRateAttachmentInfoKHR
import Vulkan.Types.Struct.VkRenderingInfoKHR
import Vulkan.Types.Command.VkCmdBeginRenderingKHR
import Vulkan.Types.Command.VkCmdEndRenderingKHR
import Vulkan.Types.VkFun



pattern VK_KHR_DYNAMIC_RENDERING_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_DYNAMIC_RENDERING_SPEC_VERSION = 1

pattern VK_KHR_DYNAMIC_RENDERING_EXTENSION_NAME :: CString
pattern VK_KHR_DYNAMIC_RENDERING_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_DYNAMIC_RENDERING_EXTENSION_NAME = Ptr ("VK_KHR_dynamic_rendering\0"##)

#else

module Vulkan.Ext.VK_KHR_dynamic_rendering where

#endif
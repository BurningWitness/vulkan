{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_descriptor_buffer

module Vulkan.Ext.VK_EXT_descriptor_buffer
  ( pattern VK_EXT_DESCRIPTOR_BUFFER_SPEC_VERSION
  , pattern VK_EXT_DESCRIPTOR_BUFFER_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_PROPERTIES_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_DENSITY_MAP_PROPERTIES_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_DESCRIPTOR_ADDRESS_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_DESCRIPTOR_GET_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_BUFFER_CAPTURE_DESCRIPTOR_DATA_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_IMAGE_CAPTURE_DESCRIPTOR_DATA_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_IMAGE_VIEW_CAPTURE_DESCRIPTOR_DATA_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_SAMPLER_CAPTURE_DESCRIPTOR_DATA_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_OPAQUE_CAPTURE_DESCRIPTOR_DATA_CREATE_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_DESCRIPTOR_BUFFER_BINDING_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_DESCRIPTOR_BUFFER_BINDING_PUSH_DESCRIPTOR_BUFFER_HANDLE_EXT
  , pattern VK_DESCRIPTOR_SET_LAYOUT_CREATE_DESCRIPTOR_BUFFER_BIT_EXT
  , pattern VK_DESCRIPTOR_SET_LAYOUT_CREATE_EMBEDDED_IMMUTABLE_SAMPLERS_BIT_EXT
  , pattern VK_BUFFER_USAGE_SAMPLER_DESCRIPTOR_BUFFER_BIT_EXT
  , pattern VK_BUFFER_USAGE_RESOURCE_DESCRIPTOR_BUFFER_BIT_EXT
  , pattern VK_BUFFER_USAGE_PUSH_DESCRIPTORS_DESCRIPTOR_BUFFER_BIT_EXT
  , pattern VK_BUFFER_CREATE_DESCRIPTOR_BUFFER_CAPTURE_REPLAY_BIT_EXT
  , pattern VK_IMAGE_CREATE_DESCRIPTOR_BUFFER_CAPTURE_REPLAY_BIT_EXT
  , pattern VK_IMAGE_VIEW_CREATE_DESCRIPTOR_BUFFER_CAPTURE_REPLAY_BIT_EXT
  , pattern VK_SAMPLER_CREATE_DESCRIPTOR_BUFFER_CAPTURE_REPLAY_BIT_EXT
  , pattern VK_ACCELERATION_STRUCTURE_CREATE_DESCRIPTOR_BUFFER_CAPTURE_REPLAY_BIT_EXT
  , pattern VK_ACCESS_2_DESCRIPTOR_BUFFER_READ_BIT_EXT
  , pattern VK_PIPELINE_CREATE_DESCRIPTOR_BUFFER_BIT_EXT
  , VkPhysicalDeviceDescriptorBufferPropertiesEXT (..)
  , VkPhysicalDeviceDescriptorBufferDensityMapPropertiesEXT (..)
  , VkPhysicalDeviceDescriptorBufferFeaturesEXT (..)
  , VkDescriptorAddressInfoEXT (..)
  , VkDescriptorBufferBindingInfoEXT (..)
  , VkDescriptorBufferBindingPushDescriptorBufferHandleEXT (..)
  , VkDescriptorDataEXT (..)
  , VkDescriptorGetInfoEXT (..)
  , VkBufferCaptureDescriptorDataInfoEXT (..)
  , VkImageCaptureDescriptorDataInfoEXT (..)
  , VkImageViewCaptureDescriptorDataInfoEXT (..)
  , VkSamplerCaptureDescriptorDataInfoEXT (..)
  , VkOpaqueCaptureDescriptorDataCreateInfoEXT (..)
  , VkGetDescriptorSetLayoutSizeEXT
  , vkFunGetDescriptorSetLayoutSizeEXT
  , VkGetDescriptorSetLayoutBindingOffsetEXT
  , vkFunGetDescriptorSetLayoutBindingOffsetEXT
  , VkGetDescriptorEXT
  , vkFunGetDescriptorEXT
  , VkCmdBindDescriptorBuffersEXT
  , vkFunCmdBindDescriptorBuffersEXT
  , VkCmdSetDescriptorBufferOffsetsEXT
  , vkFunCmdSetDescriptorBufferOffsetsEXT
  , VkCmdBindDescriptorBufferEmbeddedSamplersEXT
  , vkFunCmdBindDescriptorBufferEmbeddedSamplersEXT
  , VkGetBufferOpaqueCaptureDescriptorDataEXT
  , vkFunGetBufferOpaqueCaptureDescriptorDataEXT
  , VkGetImageOpaqueCaptureDescriptorDataEXT
  , vkFunGetImageOpaqueCaptureDescriptorDataEXT
  , VkGetImageViewOpaqueCaptureDescriptorDataEXT
  , vkFunGetImageViewOpaqueCaptureDescriptorDataEXT
  , VkGetSamplerOpaqueCaptureDescriptorDataEXT
  , vkFunGetSamplerOpaqueCaptureDescriptorDataEXT
#if (VK_KHR_acceleration_structure) || (VK_NV_ray_tracing)
  , pattern VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_CAPTURE_DESCRIPTOR_DATA_INFO_EXT
  , VkAccelerationStructureCaptureDescriptorDataInfoEXT (..)
  , VkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT
  , vkFunGetAccelerationStructureOpaqueCaptureDescriptorDataEXT
#endif
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkAccelerationStructureCreateFlagBitsKHR
import Vulkan.Types.Enum.VkAccessFlagBits2
import Vulkan.Types.Enum.VkBufferCreateFlagBits
import Vulkan.Types.Enum.VkBufferUsageFlagBits
import Vulkan.Types.Enum.VkDescriptorSetLayoutCreateFlagBits
import Vulkan.Types.Enum.VkImageCreateFlagBits
import Vulkan.Types.Enum.VkImageViewCreateFlagBits
import Vulkan.Types.Enum.VkPipelineCreateFlagBits
import Vulkan.Types.Enum.VkSamplerCreateFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkAccelerationStructureCaptureDescriptorDataInfoEXT
import Vulkan.Types.Struct.VkBufferCaptureDescriptorDataInfoEXT
import Vulkan.Types.Struct.VkDescriptorAddressInfoEXT
import Vulkan.Types.Struct.VkDescriptorBufferBindingInfoEXT
import Vulkan.Types.Struct.VkDescriptorBufferBindingPushDescriptorBufferHandleEXT
import Vulkan.Types.Struct.VkDescriptorGetInfoEXT
import Vulkan.Types.Struct.VkImageCaptureDescriptorDataInfoEXT
import Vulkan.Types.Struct.VkImageViewCaptureDescriptorDataInfoEXT
import Vulkan.Types.Struct.VkOpaqueCaptureDescriptorDataCreateInfoEXT
import Vulkan.Types.Struct.VkPhysicalDeviceDescriptorBufferDensityMapPropertiesEXT
import Vulkan.Types.Struct.VkPhysicalDeviceDescriptorBufferFeaturesEXT
import Vulkan.Types.Struct.VkPhysicalDeviceDescriptorBufferPropertiesEXT
import Vulkan.Types.Struct.VkSamplerCaptureDescriptorDataInfoEXT
import Vulkan.Types.Union.VkDescriptorDataEXT
import Vulkan.Types.Command.VkCmdBindDescriptorBufferEmbeddedSamplersEXT
import Vulkan.Types.Command.VkCmdBindDescriptorBuffersEXT
import Vulkan.Types.Command.VkCmdSetDescriptorBufferOffsetsEXT
import Vulkan.Types.Command.VkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT
import Vulkan.Types.Command.VkGetBufferOpaqueCaptureDescriptorDataEXT
import Vulkan.Types.Command.VkGetDescriptorEXT
import Vulkan.Types.Command.VkGetDescriptorSetLayoutBindingOffsetEXT
import Vulkan.Types.Command.VkGetDescriptorSetLayoutSizeEXT
import Vulkan.Types.Command.VkGetImageOpaqueCaptureDescriptorDataEXT
import Vulkan.Types.Command.VkGetImageViewOpaqueCaptureDescriptorDataEXT
import Vulkan.Types.Command.VkGetSamplerOpaqueCaptureDescriptorDataEXT
import Vulkan.Types.VkFun



pattern VK_EXT_DESCRIPTOR_BUFFER_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_DESCRIPTOR_BUFFER_SPEC_VERSION = 1

pattern VK_EXT_DESCRIPTOR_BUFFER_EXTENSION_NAME :: CString
pattern VK_EXT_DESCRIPTOR_BUFFER_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_DESCRIPTOR_BUFFER_EXTENSION_NAME = Ptr ("VK_EXT_descriptor_buffer\0"##)

#else

module Vulkan.Ext.VK_EXT_descriptor_buffer where

#endif
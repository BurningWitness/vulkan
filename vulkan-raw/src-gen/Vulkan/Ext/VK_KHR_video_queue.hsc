{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_queue

module Vulkan.Ext.VK_KHR_video_queue
  ( pattern VK_KHR_VIDEO_QUEUE_SPEC_VERSION
  , pattern VK_KHR_VIDEO_QUEUE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_VIDEO_PROFILE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_VIDEO_CAPABILITIES_KHR
  , pattern VK_STRUCTURE_TYPE_VIDEO_PICTURE_RESOURCE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_VIDEO_SESSION_MEMORY_REQUIREMENTS_KHR
  , pattern VK_STRUCTURE_TYPE_BIND_VIDEO_SESSION_MEMORY_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_VIDEO_SESSION_CREATE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_VIDEO_SESSION_PARAMETERS_CREATE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_VIDEO_SESSION_PARAMETERS_UPDATE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_VIDEO_BEGIN_CODING_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_VIDEO_END_CODING_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_VIDEO_CODING_CONTROL_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_VIDEO_REFERENCE_SLOT_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_QUEUE_FAMILY_VIDEO_PROPERTIES_KHR
  , pattern VK_STRUCTURE_TYPE_VIDEO_PROFILE_LIST_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VIDEO_FORMAT_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_VIDEO_FORMAT_PROPERTIES_KHR
  , pattern VK_STRUCTURE_TYPE_QUEUE_FAMILY_QUERY_RESULT_STATUS_PROPERTIES_KHR
  , pattern VK_OBJECT_TYPE_VIDEO_SESSION_KHR
  , pattern VK_OBJECT_TYPE_VIDEO_SESSION_PARAMETERS_KHR
  , pattern VK_QUERY_TYPE_RESULT_STATUS_ONLY_KHR
  , pattern VK_QUERY_RESULT_WITH_STATUS_BIT_KHR
  , pattern VK_ERROR_IMAGE_USAGE_NOT_SUPPORTED_KHR
  , pattern VK_ERROR_VIDEO_PICTURE_LAYOUT_NOT_SUPPORTED_KHR
  , pattern VK_ERROR_VIDEO_PROFILE_OPERATION_NOT_SUPPORTED_KHR
  , pattern VK_ERROR_VIDEO_PROFILE_FORMAT_NOT_SUPPORTED_KHR
  , pattern VK_ERROR_VIDEO_PROFILE_CODEC_NOT_SUPPORTED_KHR
  , pattern VK_ERROR_VIDEO_STD_VERSION_NOT_SUPPORTED_KHR
  , VkVideoSessionKHR_T
  , VkVideoSessionKHR
  , VkVideoSessionParametersKHR_T
  , VkVideoSessionParametersKHR
  , VkVideoCodecOperationFlagBitsKHR
  , pattern VK_VIDEO_CODEC_OPERATION_NONE_KHR
  , VkVideoCodecOperationFlagsKHR
  , VkVideoChromaSubsamplingFlagBitsKHR
  , pattern VK_VIDEO_CHROMA_SUBSAMPLING_INVALID_KHR
  , pattern VK_VIDEO_CHROMA_SUBSAMPLING_MONOCHROME_BIT_KHR
  , pattern VK_VIDEO_CHROMA_SUBSAMPLING_420_BIT_KHR
  , pattern VK_VIDEO_CHROMA_SUBSAMPLING_422_BIT_KHR
  , pattern VK_VIDEO_CHROMA_SUBSAMPLING_444_BIT_KHR
  , VkVideoChromaSubsamplingFlagsKHR
  , VkVideoComponentBitDepthFlagBitsKHR
  , pattern VK_VIDEO_COMPONENT_BIT_DEPTH_INVALID_KHR
  , pattern VK_VIDEO_COMPONENT_BIT_DEPTH_8_BIT_KHR
  , pattern VK_VIDEO_COMPONENT_BIT_DEPTH_10_BIT_KHR
  , pattern VK_VIDEO_COMPONENT_BIT_DEPTH_12_BIT_KHR
  , VkVideoComponentBitDepthFlagsKHR
  , VkVideoCapabilityFlagBitsKHR
  , pattern VK_VIDEO_CAPABILITY_PROTECTED_CONTENT_BIT_KHR
  , pattern VK_VIDEO_CAPABILITY_SEPARATE_REFERENCE_IMAGES_BIT_KHR
  , VkVideoCapabilityFlagsKHR
  , VkVideoSessionCreateFlagBitsKHR
  , pattern VK_VIDEO_SESSION_CREATE_PROTECTED_CONTENT_BIT_KHR
  , VkVideoSessionCreateFlagsKHR
  , VkVideoSessionParametersCreateFlagsKHR
  , VkVideoBeginCodingFlagsKHR
  , VkVideoEndCodingFlagsKHR
  , VkVideoCodingControlFlagBitsKHR
  , pattern VK_VIDEO_CODING_CONTROL_RESET_BIT_KHR
  , VkVideoCodingControlFlagsKHR
  , VkQueueFamilyQueryResultStatusPropertiesKHR (..)
  , VkQueryResultStatusKHR
  , pattern VK_QUERY_RESULT_STATUS_ERROR_KHR
  , pattern VK_QUERY_RESULT_STATUS_NOT_READY_KHR
  , pattern VK_QUERY_RESULT_STATUS_COMPLETE_KHR
  , VkQueueFamilyVideoPropertiesKHR (..)
  , VkVideoProfileInfoKHR (..)
  , VkVideoProfileListInfoKHR (..)
  , VkVideoCapabilitiesKHR (..)
  , VkPhysicalDeviceVideoFormatInfoKHR (..)
  , VkVideoFormatPropertiesKHR (..)
  , VkVideoPictureResourceInfoKHR (..)
  , VkVideoReferenceSlotInfoKHR (..)
  , VkVideoSessionMemoryRequirementsKHR (..)
  , VkBindVideoSessionMemoryInfoKHR (..)
  , VkVideoSessionCreateInfoKHR (..)
  , VkVideoSessionParametersCreateInfoKHR (..)
  , VkVideoSessionParametersUpdateInfoKHR (..)
  , VkVideoBeginCodingInfoKHR (..)
  , VkVideoEndCodingInfoKHR (..)
  , VkVideoCodingControlInfoKHR (..)
  , VkGetPhysicalDeviceVideoCapabilitiesKHR
  , vkFunGetPhysicalDeviceVideoCapabilitiesKHR
  , VkGetPhysicalDeviceVideoFormatPropertiesKHR
  , vkFunGetPhysicalDeviceVideoFormatPropertiesKHR
  , VkCreateVideoSessionKHR
  , vkFunCreateVideoSessionKHR
  , VkDestroyVideoSessionKHR
  , vkFunDestroyVideoSessionKHR
  , VkGetVideoSessionMemoryRequirementsKHR
  , vkFunGetVideoSessionMemoryRequirementsKHR
  , VkBindVideoSessionMemoryKHR
  , vkFunBindVideoSessionMemoryKHR
  , VkCreateVideoSessionParametersKHR
  , vkFunCreateVideoSessionParametersKHR
  , VkUpdateVideoSessionParametersKHR
  , vkFunUpdateVideoSessionParametersKHR
  , VkDestroyVideoSessionParametersKHR
  , vkFunDestroyVideoSessionParametersKHR
  , VkCmdBeginVideoCodingKHR
  , vkFunCmdBeginVideoCodingKHR
  , VkCmdEndVideoCodingKHR
  , vkFunCmdEndVideoCodingKHR
  , VkCmdControlVideoCodingKHR
  , vkFunCmdControlVideoCodingKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkObjectType
import Vulkan.Types.Enum.VkQueryResultFlagBits
import Vulkan.Types.Enum.VkQueryResultStatusKHR
import Vulkan.Types.Enum.VkQueryType
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkVideoBeginCodingFlagsKHR
import Vulkan.Types.Enum.VkVideoCapabilityFlagBitsKHR
import Vulkan.Types.Enum.VkVideoCapabilityFlagsKHR
import Vulkan.Types.Enum.VkVideoChromaSubsamplingFlagBitsKHR
import Vulkan.Types.Enum.VkVideoChromaSubsamplingFlagsKHR
import Vulkan.Types.Enum.VkVideoCodecOperationFlagBitsKHR
import Vulkan.Types.Enum.VkVideoCodecOperationFlagsKHR
import Vulkan.Types.Enum.VkVideoCodingControlFlagBitsKHR
import Vulkan.Types.Enum.VkVideoCodingControlFlagsKHR
import Vulkan.Types.Enum.VkVideoComponentBitDepthFlagBitsKHR
import Vulkan.Types.Enum.VkVideoComponentBitDepthFlagsKHR
import Vulkan.Types.Enum.VkVideoEndCodingFlagsKHR
import Vulkan.Types.Enum.VkVideoSessionCreateFlagBitsKHR
import Vulkan.Types.Enum.VkVideoSessionCreateFlagsKHR
import Vulkan.Types.Enum.VkVideoSessionParametersCreateFlagsKHR
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBindVideoSessionMemoryInfoKHR
import Vulkan.Types.Struct.VkPhysicalDeviceVideoFormatInfoKHR
import Vulkan.Types.Struct.VkQueueFamilyQueryResultStatusPropertiesKHR
import Vulkan.Types.Struct.VkQueueFamilyVideoPropertiesKHR
import Vulkan.Types.Struct.VkVideoBeginCodingInfoKHR
import Vulkan.Types.Struct.VkVideoCapabilitiesKHR
import Vulkan.Types.Struct.VkVideoCodingControlInfoKHR
import Vulkan.Types.Struct.VkVideoEndCodingInfoKHR
import Vulkan.Types.Struct.VkVideoFormatPropertiesKHR
import Vulkan.Types.Struct.VkVideoPictureResourceInfoKHR
import Vulkan.Types.Struct.VkVideoProfileInfoKHR
import Vulkan.Types.Struct.VkVideoProfileListInfoKHR
import Vulkan.Types.Struct.VkVideoReferenceSlotInfoKHR
import Vulkan.Types.Struct.VkVideoSessionCreateInfoKHR
import Vulkan.Types.Struct.VkVideoSessionMemoryRequirementsKHR
import Vulkan.Types.Struct.VkVideoSessionParametersCreateInfoKHR
import Vulkan.Types.Struct.VkVideoSessionParametersUpdateInfoKHR
import Vulkan.Types.Command.VkBindVideoSessionMemoryKHR
import Vulkan.Types.Command.VkCmdBeginVideoCodingKHR
import Vulkan.Types.Command.VkCmdControlVideoCodingKHR
import Vulkan.Types.Command.VkCmdEndVideoCodingKHR
import Vulkan.Types.Command.VkCreateVideoSessionKHR
import Vulkan.Types.Command.VkCreateVideoSessionParametersKHR
import Vulkan.Types.Command.VkDestroyVideoSessionKHR
import Vulkan.Types.Command.VkDestroyVideoSessionParametersKHR
import Vulkan.Types.Command.VkGetPhysicalDeviceVideoCapabilitiesKHR
import Vulkan.Types.Command.VkGetPhysicalDeviceVideoFormatPropertiesKHR
import Vulkan.Types.Command.VkGetVideoSessionMemoryRequirementsKHR
import Vulkan.Types.Command.VkUpdateVideoSessionParametersKHR
import Vulkan.Types.VkFun



pattern VK_KHR_VIDEO_QUEUE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_VIDEO_QUEUE_SPEC_VERSION = 8

pattern VK_KHR_VIDEO_QUEUE_EXTENSION_NAME :: CString
pattern VK_KHR_VIDEO_QUEUE_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_VIDEO_QUEUE_EXTENSION_NAME = Ptr ("VK_KHR_video_queue\0"##)

#else

module Vulkan.Ext.VK_KHR_video_queue where

#endif
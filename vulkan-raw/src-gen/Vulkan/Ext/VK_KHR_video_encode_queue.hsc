{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_encode_queue

module Vulkan.Ext.VK_KHR_video_encode_queue
  ( pattern VK_KHR_VIDEO_ENCODE_QUEUE_SPEC_VERSION
  , pattern VK_KHR_VIDEO_ENCODE_QUEUE_EXTENSION_NAME
  , pattern VK_PIPELINE_STAGE_2_VIDEO_ENCODE_BIT_KHR
  , pattern VK_ACCESS_2_VIDEO_ENCODE_READ_BIT_KHR
  , pattern VK_ACCESS_2_VIDEO_ENCODE_WRITE_BIT_KHR
  , pattern VK_STRUCTURE_TYPE_VIDEO_ENCODE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_VIDEO_ENCODE_RATE_CONTROL_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_VIDEO_ENCODE_RATE_CONTROL_LAYER_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_VIDEO_ENCODE_CAPABILITIES_KHR
  , pattern VK_STRUCTURE_TYPE_VIDEO_ENCODE_USAGE_INFO_KHR
  , pattern VK_QUEUE_VIDEO_ENCODE_BIT_KHR
  , pattern VK_VIDEO_CODING_CONTROL_ENCODE_RATE_CONTROL_BIT_KHR
  , pattern VK_VIDEO_CODING_CONTROL_ENCODE_RATE_CONTROL_LAYER_BIT_KHR
  , pattern VK_BUFFER_USAGE_VIDEO_ENCODE_DST_BIT_KHR
  , pattern VK_BUFFER_USAGE_VIDEO_ENCODE_SRC_BIT_KHR
  , pattern VK_IMAGE_USAGE_VIDEO_ENCODE_DST_BIT_KHR
  , pattern VK_IMAGE_USAGE_VIDEO_ENCODE_SRC_BIT_KHR
  , pattern VK_IMAGE_USAGE_VIDEO_ENCODE_DPB_BIT_KHR
  , pattern VK_FORMAT_FEATURE_VIDEO_ENCODE_INPUT_BIT_KHR
  , pattern VK_FORMAT_FEATURE_VIDEO_ENCODE_DPB_BIT_KHR
  , pattern VK_IMAGE_LAYOUT_VIDEO_ENCODE_DST_KHR
  , pattern VK_IMAGE_LAYOUT_VIDEO_ENCODE_SRC_KHR
  , pattern VK_IMAGE_LAYOUT_VIDEO_ENCODE_DPB_KHR
  , pattern VK_QUERY_TYPE_VIDEO_ENCODE_BITSTREAM_BUFFER_RANGE_KHR
  , VkVideoEncodeFlagsKHR
  , VkVideoEncodeInfoKHR (..)
  , VkVideoEncodeCapabilityFlagBitsKHR
  , pattern VK_VIDEO_ENCODE_CAPABILITY_PRECEDING_EXTERNALLY_ENCODED_BYTES_BIT_KHR
  , VkVideoEncodeCapabilityFlagsKHR
  , VkVideoEncodeCapabilitiesKHR (..)
  , VkVideoEncodeUsageFlagBitsKHR
  , pattern VK_VIDEO_ENCODE_USAGE_DEFAULT_KHR
  , pattern VK_VIDEO_ENCODE_USAGE_TRANSCODING_BIT_KHR
  , pattern VK_VIDEO_ENCODE_USAGE_STREAMING_BIT_KHR
  , pattern VK_VIDEO_ENCODE_USAGE_RECORDING_BIT_KHR
  , pattern VK_VIDEO_ENCODE_USAGE_CONFERENCING_BIT_KHR
  , VkVideoEncodeUsageFlagsKHR
  , VkVideoEncodeContentFlagBitsKHR
  , pattern VK_VIDEO_ENCODE_CONTENT_DEFAULT_KHR
  , pattern VK_VIDEO_ENCODE_CONTENT_CAMERA_BIT_KHR
  , pattern VK_VIDEO_ENCODE_CONTENT_DESKTOP_BIT_KHR
  , pattern VK_VIDEO_ENCODE_CONTENT_RENDERED_BIT_KHR
  , VkVideoEncodeContentFlagsKHR
  , VkVideoEncodeTuningModeKHR
  , pattern VK_VIDEO_ENCODE_TUNING_MODE_DEFAULT_KHR
  , pattern VK_VIDEO_ENCODE_TUNING_MODE_HIGH_QUALITY_KHR
  , pattern VK_VIDEO_ENCODE_TUNING_MODE_LOW_LATENCY_KHR
  , pattern VK_VIDEO_ENCODE_TUNING_MODE_ULTRA_LOW_LATENCY_KHR
  , pattern VK_VIDEO_ENCODE_TUNING_MODE_LOSSLESS_KHR
  , VkVideoEncodeUsageInfoKHR (..)
  , VkVideoEncodeRateControlFlagsKHR
  , VkVideoEncodeRateControlModeFlagBitsKHR
  , pattern VK_VIDEO_ENCODE_RATE_CONTROL_MODE_NONE_BIT_KHR
  , pattern VK_VIDEO_ENCODE_RATE_CONTROL_MODE_CBR_BIT_KHR
  , pattern VK_VIDEO_ENCODE_RATE_CONTROL_MODE_VBR_BIT_KHR
  , VkVideoEncodeRateControlModeFlagsKHR
  , VkVideoEncodeRateControlInfoKHR (..)
  , VkVideoEncodeRateControlLayerInfoKHR (..)
  , VkCmdEncodeVideoKHR
  , vkFunCmdEncodeVideoKHR
#if VK_KHR_format_feature_flags2
  , pattern VK_FORMAT_FEATURE_2_VIDEO_ENCODE_INPUT_BIT_KHR
  , pattern VK_FORMAT_FEATURE_2_VIDEO_ENCODE_DPB_BIT_KHR
#endif
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkAccessFlagBits2
import Vulkan.Types.Enum.VkBufferUsageFlagBits
import Vulkan.Types.Enum.VkFormatFeatureFlagBits
import Vulkan.Types.Enum.VkFormatFeatureFlagBits2
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkImageUsageFlagBits
import Vulkan.Types.Enum.VkPipelineStageFlagBits2
import Vulkan.Types.Enum.VkQueryType
import Vulkan.Types.Enum.VkQueueFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkVideoCodingControlFlagBitsKHR
import Vulkan.Types.Enum.VkVideoEncodeCapabilityFlagBitsKHR
import Vulkan.Types.Enum.VkVideoEncodeCapabilityFlagsKHR
import Vulkan.Types.Enum.VkVideoEncodeContentFlagBitsKHR
import Vulkan.Types.Enum.VkVideoEncodeContentFlagsKHR
import Vulkan.Types.Enum.VkVideoEncodeFlagsKHR
import Vulkan.Types.Enum.VkVideoEncodeRateControlFlagsKHR
import Vulkan.Types.Enum.VkVideoEncodeRateControlModeFlagBitsKHR
import Vulkan.Types.Enum.VkVideoEncodeRateControlModeFlagsKHR
import Vulkan.Types.Enum.VkVideoEncodeTuningModeKHR
import Vulkan.Types.Enum.VkVideoEncodeUsageFlagBitsKHR
import Vulkan.Types.Enum.VkVideoEncodeUsageFlagsKHR
import Vulkan.Types.Struct.VkVideoEncodeCapabilitiesKHR
import Vulkan.Types.Struct.VkVideoEncodeInfoKHR
import Vulkan.Types.Struct.VkVideoEncodeRateControlInfoKHR
import Vulkan.Types.Struct.VkVideoEncodeRateControlLayerInfoKHR
import Vulkan.Types.Struct.VkVideoEncodeUsageInfoKHR
import Vulkan.Types.Command.VkCmdEncodeVideoKHR
import Vulkan.Types.VkFun



pattern VK_KHR_VIDEO_ENCODE_QUEUE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_VIDEO_ENCODE_QUEUE_SPEC_VERSION = 7

pattern VK_KHR_VIDEO_ENCODE_QUEUE_EXTENSION_NAME :: CString
pattern VK_KHR_VIDEO_ENCODE_QUEUE_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_VIDEO_ENCODE_QUEUE_EXTENSION_NAME = Ptr ("VK_KHR_video_encode_queue\0"##)

#else

module Vulkan.Ext.VK_KHR_video_encode_queue where

#endif
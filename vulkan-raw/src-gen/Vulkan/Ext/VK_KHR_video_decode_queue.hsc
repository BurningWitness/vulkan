{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_decode_queue

module Vulkan.Ext.VK_KHR_video_decode_queue
  ( pattern VK_KHR_VIDEO_DECODE_QUEUE_SPEC_VERSION
  , pattern VK_KHR_VIDEO_DECODE_QUEUE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_VIDEO_DECODE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_VIDEO_DECODE_CAPABILITIES_KHR
  , pattern VK_STRUCTURE_TYPE_VIDEO_DECODE_USAGE_INFO_KHR
  , pattern VK_QUEUE_VIDEO_DECODE_BIT_KHR
  , pattern VK_PIPELINE_STAGE_2_VIDEO_DECODE_BIT_KHR
  , pattern VK_ACCESS_2_VIDEO_DECODE_READ_BIT_KHR
  , pattern VK_ACCESS_2_VIDEO_DECODE_WRITE_BIT_KHR
  , pattern VK_BUFFER_USAGE_VIDEO_DECODE_SRC_BIT_KHR
  , pattern VK_BUFFER_USAGE_VIDEO_DECODE_DST_BIT_KHR
  , pattern VK_IMAGE_USAGE_VIDEO_DECODE_DST_BIT_KHR
  , pattern VK_IMAGE_USAGE_VIDEO_DECODE_SRC_BIT_KHR
  , pattern VK_IMAGE_USAGE_VIDEO_DECODE_DPB_BIT_KHR
  , pattern VK_FORMAT_FEATURE_VIDEO_DECODE_OUTPUT_BIT_KHR
  , pattern VK_FORMAT_FEATURE_VIDEO_DECODE_DPB_BIT_KHR
  , pattern VK_IMAGE_LAYOUT_VIDEO_DECODE_DST_KHR
  , pattern VK_IMAGE_LAYOUT_VIDEO_DECODE_SRC_KHR
  , pattern VK_IMAGE_LAYOUT_VIDEO_DECODE_DPB_KHR
  , VkVideoDecodeCapabilityFlagBitsKHR
  , pattern VK_VIDEO_DECODE_CAPABILITY_DPB_AND_OUTPUT_COINCIDE_BIT_KHR
  , pattern VK_VIDEO_DECODE_CAPABILITY_DPB_AND_OUTPUT_DISTINCT_BIT_KHR
  , VkVideoDecodeCapabilityFlagsKHR
  , VkVideoDecodeCapabilitiesKHR (..)
  , VkVideoDecodeUsageFlagBitsKHR
  , pattern VK_VIDEO_DECODE_USAGE_DEFAULT_KHR
  , pattern VK_VIDEO_DECODE_USAGE_TRANSCODING_BIT_KHR
  , pattern VK_VIDEO_DECODE_USAGE_OFFLINE_BIT_KHR
  , pattern VK_VIDEO_DECODE_USAGE_STREAMING_BIT_KHR
  , VkVideoDecodeUsageFlagsKHR
  , VkVideoDecodeUsageInfoKHR (..)
  , VkVideoDecodeFlagsKHR
  , VkVideoDecodeInfoKHR (..)
  , VkCmdDecodeVideoKHR
  , vkFunCmdDecodeVideoKHR
#if VK_KHR_format_feature_flags2
  , pattern VK_FORMAT_FEATURE_2_VIDEO_DECODE_OUTPUT_BIT_KHR
  , pattern VK_FORMAT_FEATURE_2_VIDEO_DECODE_DPB_BIT_KHR
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
import Vulkan.Types.Enum.VkQueueFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkVideoDecodeCapabilityFlagBitsKHR
import Vulkan.Types.Enum.VkVideoDecodeCapabilityFlagsKHR
import Vulkan.Types.Enum.VkVideoDecodeFlagsKHR
import Vulkan.Types.Enum.VkVideoDecodeUsageFlagBitsKHR
import Vulkan.Types.Enum.VkVideoDecodeUsageFlagsKHR
import Vulkan.Types.Struct.VkVideoDecodeCapabilitiesKHR
import Vulkan.Types.Struct.VkVideoDecodeInfoKHR
import Vulkan.Types.Struct.VkVideoDecodeUsageInfoKHR
import Vulkan.Types.Command.VkCmdDecodeVideoKHR
import Vulkan.Types.VkFun



pattern VK_KHR_VIDEO_DECODE_QUEUE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_VIDEO_DECODE_QUEUE_SPEC_VERSION = 7

pattern VK_KHR_VIDEO_DECODE_QUEUE_EXTENSION_NAME :: CString
pattern VK_KHR_VIDEO_DECODE_QUEUE_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_VIDEO_DECODE_QUEUE_EXTENSION_NAME = Ptr ("VK_KHR_video_decode_queue\0"##)

#else

module Vulkan.Ext.VK_KHR_video_decode_queue where

#endif
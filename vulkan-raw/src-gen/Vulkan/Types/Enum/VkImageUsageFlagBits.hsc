{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkImageUsageFlagBits where

import Vulkan.Types.Base



type VkImageUsageFlagBits = VkFlags

-- | Can be used as a source of transfer operations
pattern VK_IMAGE_USAGE_TRANSFER_SRC_BIT :: (Eq a, Num a) => a
pattern VK_IMAGE_USAGE_TRANSFER_SRC_BIT = 1

-- | Can be used as a destination of transfer operations
pattern VK_IMAGE_USAGE_TRANSFER_DST_BIT :: (Eq a, Num a) => a
pattern VK_IMAGE_USAGE_TRANSFER_DST_BIT = 2

-- | Can be sampled from (SAMPLED_IMAGE and COMBINED_IMAGE_SAMPLER descriptor types)
pattern VK_IMAGE_USAGE_SAMPLED_BIT :: (Eq a, Num a) => a
pattern VK_IMAGE_USAGE_SAMPLED_BIT = 4

-- | Can be used as storage image (STORAGE_IMAGE descriptor type)
pattern VK_IMAGE_USAGE_STORAGE_BIT :: (Eq a, Num a) => a
pattern VK_IMAGE_USAGE_STORAGE_BIT = 8

-- | Can be used as framebuffer color attachment
pattern VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT :: (Eq a, Num a) => a
pattern VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT = 16

-- | Can be used as framebuffer depth/stencil attachment
pattern VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT :: (Eq a, Num a) => a
pattern VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT = 32

-- | Image data not needed outside of rendering
pattern VK_IMAGE_USAGE_TRANSIENT_ATTACHMENT_BIT :: (Eq a, Num a) => a
pattern VK_IMAGE_USAGE_TRANSIENT_ATTACHMENT_BIT = 64

-- | Can be used as framebuffer input attachment
pattern VK_IMAGE_USAGE_INPUT_ATTACHMENT_BIT :: (Eq a, Num a) => a
pattern VK_IMAGE_USAGE_INPUT_ATTACHMENT_BIT = 128

#if VK_KHR_video_decode_queue
pattern VK_IMAGE_USAGE_VIDEO_DECODE_DST_BIT_KHR :: (Eq a, Num a) => a
pattern VK_IMAGE_USAGE_VIDEO_DECODE_DST_BIT_KHR = 1024
#endif

#if VK_KHR_video_decode_queue
pattern VK_IMAGE_USAGE_VIDEO_DECODE_SRC_BIT_KHR :: (Eq a, Num a) => a
pattern VK_IMAGE_USAGE_VIDEO_DECODE_SRC_BIT_KHR = 2048
#endif

#if VK_KHR_video_decode_queue
pattern VK_IMAGE_USAGE_VIDEO_DECODE_DPB_BIT_KHR :: (Eq a, Num a) => a
pattern VK_IMAGE_USAGE_VIDEO_DECODE_DPB_BIT_KHR = 4096
#endif

#if VK_NV_shading_rate_image
pattern VK_IMAGE_USAGE_SHADING_RATE_IMAGE_BIT_NV :: (Eq a, Num a) => a
pattern VK_IMAGE_USAGE_SHADING_RATE_IMAGE_BIT_NV = 256
#endif

#if VK_EXT_fragment_density_map
pattern VK_IMAGE_USAGE_FRAGMENT_DENSITY_MAP_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_USAGE_FRAGMENT_DENSITY_MAP_BIT_EXT = 512
#endif

#if VK_KHR_fragment_shading_rate
pattern VK_IMAGE_USAGE_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_IMAGE_USAGE_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR = 256
#endif

#if VK_KHR_video_encode_queue
pattern VK_IMAGE_USAGE_VIDEO_ENCODE_DST_BIT_KHR :: (Eq a, Num a) => a
pattern VK_IMAGE_USAGE_VIDEO_ENCODE_DST_BIT_KHR = 8192
#endif

#if VK_KHR_video_encode_queue
pattern VK_IMAGE_USAGE_VIDEO_ENCODE_SRC_BIT_KHR :: (Eq a, Num a) => a
pattern VK_IMAGE_USAGE_VIDEO_ENCODE_SRC_BIT_KHR = 16384
#endif

#if VK_KHR_video_encode_queue
pattern VK_IMAGE_USAGE_VIDEO_ENCODE_DPB_BIT_KHR :: (Eq a, Num a) => a
pattern VK_IMAGE_USAGE_VIDEO_ENCODE_DPB_BIT_KHR = 32768
#endif

#if VK_EXT_attachment_feedback_loop_layout
pattern VK_IMAGE_USAGE_ATTACHMENT_FEEDBACK_LOOP_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_USAGE_ATTACHMENT_FEEDBACK_LOOP_BIT_EXT = 524288
#endif

#if VK_HUAWEI_invocation_mask
pattern VK_IMAGE_USAGE_INVOCATION_MASK_BIT_HUAWEI :: (Eq a, Num a) => a
pattern VK_IMAGE_USAGE_INVOCATION_MASK_BIT_HUAWEI = 262144
#endif

#if VK_QCOM_image_processing
pattern VK_IMAGE_USAGE_SAMPLE_WEIGHT_BIT_QCOM :: (Eq a, Num a) => a
pattern VK_IMAGE_USAGE_SAMPLE_WEIGHT_BIT_QCOM = 1048576
#endif

#if VK_QCOM_image_processing
pattern VK_IMAGE_USAGE_SAMPLE_BLOCK_MATCH_BIT_QCOM :: (Eq a, Num a) => a
pattern VK_IMAGE_USAGE_SAMPLE_BLOCK_MATCH_BIT_QCOM = 2097152
#endif
{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkImageLayout where

import Data.Int



type VkImageLayout = #{type int}

-- | Implicit layout an image is when its contents are undefined due to various reasons (e.g. right after creation)
pattern VK_IMAGE_LAYOUT_UNDEFINED :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_UNDEFINED = 0

-- | General layout when image can be used for any kind of access
pattern VK_IMAGE_LAYOUT_GENERAL :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_GENERAL = 1

-- | Optimal layout when image is only used for color attachment read/write
pattern VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL = 2

-- | Optimal layout when image is only used for depth/stencil attachment read/write
pattern VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL = 3

-- | Optimal layout when image is used for read only depth/stencil attachment and shader access
pattern VK_IMAGE_LAYOUT_DEPTH_STENCIL_READ_ONLY_OPTIMAL :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_DEPTH_STENCIL_READ_ONLY_OPTIMAL = 4

-- | Optimal layout when image is used for read only shader access
pattern VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL = 5

-- | Optimal layout when image is used only as source of transfer operations
pattern VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL = 6

-- | Optimal layout when image is used only as destination of transfer operations
pattern VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL = 7

-- | Initial layout used when the data is populated by the CPU
pattern VK_IMAGE_LAYOUT_PREINITIALIZED :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_PREINITIALIZED = 8

#if VK_VERSION_1_1 || (VK_KHR_maintenance2)
pattern VK_IMAGE_LAYOUT_DEPTH_READ_ONLY_STENCIL_ATTACHMENT_OPTIMAL :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_DEPTH_READ_ONLY_STENCIL_ATTACHMENT_OPTIMAL = 1000117000
#endif

#if VK_VERSION_1_1 || (VK_KHR_maintenance2)
pattern VK_IMAGE_LAYOUT_DEPTH_ATTACHMENT_STENCIL_READ_ONLY_OPTIMAL :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_DEPTH_ATTACHMENT_STENCIL_READ_ONLY_OPTIMAL = 1000117001
#endif

#if VK_VERSION_1_2 || (VK_KHR_separate_depth_stencil_layouts)
pattern VK_IMAGE_LAYOUT_DEPTH_ATTACHMENT_OPTIMAL :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_DEPTH_ATTACHMENT_OPTIMAL = 1000241000
#endif

#if VK_VERSION_1_2 || (VK_KHR_separate_depth_stencil_layouts)
pattern VK_IMAGE_LAYOUT_DEPTH_READ_ONLY_OPTIMAL :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_DEPTH_READ_ONLY_OPTIMAL = 1000241001
#endif

#if VK_VERSION_1_2 || (VK_KHR_separate_depth_stencil_layouts)
pattern VK_IMAGE_LAYOUT_STENCIL_ATTACHMENT_OPTIMAL :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_STENCIL_ATTACHMENT_OPTIMAL = 1000241002
#endif

#if VK_VERSION_1_2 || (VK_KHR_separate_depth_stencil_layouts)
pattern VK_IMAGE_LAYOUT_STENCIL_READ_ONLY_OPTIMAL :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_STENCIL_READ_ONLY_OPTIMAL = 1000241003
#endif

#if VK_VERSION_1_3 || (VK_KHR_synchronization2)
pattern VK_IMAGE_LAYOUT_READ_ONLY_OPTIMAL :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_READ_ONLY_OPTIMAL = 1000314000
#endif

#if VK_VERSION_1_3 || (VK_KHR_synchronization2)
pattern VK_IMAGE_LAYOUT_ATTACHMENT_OPTIMAL :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_ATTACHMENT_OPTIMAL = 1000314001
#endif

#if VK_KHR_swapchain
pattern VK_IMAGE_LAYOUT_PRESENT_SRC_KHR :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_PRESENT_SRC_KHR = 1000001002
#endif

#if VK_KHR_video_decode_queue
pattern VK_IMAGE_LAYOUT_VIDEO_DECODE_DST_KHR :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_VIDEO_DECODE_DST_KHR = 1000024000
#endif

#if VK_KHR_video_decode_queue
pattern VK_IMAGE_LAYOUT_VIDEO_DECODE_SRC_KHR :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_VIDEO_DECODE_SRC_KHR = 1000024001
#endif

#if VK_KHR_video_decode_queue
pattern VK_IMAGE_LAYOUT_VIDEO_DECODE_DPB_KHR :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_VIDEO_DECODE_DPB_KHR = 1000024002
#endif

#if VK_KHR_shared_presentable_image
pattern VK_IMAGE_LAYOUT_SHARED_PRESENT_KHR :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_SHARED_PRESENT_KHR = 1000111000
#endif

#if VK_KHR_maintenance2
pattern VK_IMAGE_LAYOUT_DEPTH_READ_ONLY_STENCIL_ATTACHMENT_OPTIMAL_KHR :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_DEPTH_READ_ONLY_STENCIL_ATTACHMENT_OPTIMAL_KHR = 1000117000
#endif

#if VK_KHR_maintenance2
pattern VK_IMAGE_LAYOUT_DEPTH_ATTACHMENT_STENCIL_READ_ONLY_OPTIMAL_KHR :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_DEPTH_ATTACHMENT_STENCIL_READ_ONLY_OPTIMAL_KHR = 1000117001
#endif

#if VK_NV_shading_rate_image
pattern VK_IMAGE_LAYOUT_SHADING_RATE_OPTIMAL_NV :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_SHADING_RATE_OPTIMAL_NV = 1000164003
#endif

#if VK_EXT_fragment_density_map
pattern VK_IMAGE_LAYOUT_FRAGMENT_DENSITY_MAP_OPTIMAL_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_FRAGMENT_DENSITY_MAP_OPTIMAL_EXT = 1000218000
#endif

#if VK_KHR_fragment_shading_rate
pattern VK_IMAGE_LAYOUT_FRAGMENT_SHADING_RATE_ATTACHMENT_OPTIMAL_KHR :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_FRAGMENT_SHADING_RATE_ATTACHMENT_OPTIMAL_KHR = 1000164003
#endif

#if VK_KHR_separate_depth_stencil_layouts
pattern VK_IMAGE_LAYOUT_DEPTH_ATTACHMENT_OPTIMAL_KHR :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_DEPTH_ATTACHMENT_OPTIMAL_KHR = 1000241000
#endif

#if VK_KHR_separate_depth_stencil_layouts
pattern VK_IMAGE_LAYOUT_DEPTH_READ_ONLY_OPTIMAL_KHR :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_DEPTH_READ_ONLY_OPTIMAL_KHR = 1000241001
#endif

#if VK_KHR_separate_depth_stencil_layouts
pattern VK_IMAGE_LAYOUT_STENCIL_ATTACHMENT_OPTIMAL_KHR :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_STENCIL_ATTACHMENT_OPTIMAL_KHR = 1000241002
#endif

#if VK_KHR_separate_depth_stencil_layouts
pattern VK_IMAGE_LAYOUT_STENCIL_READ_ONLY_OPTIMAL_KHR :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_STENCIL_READ_ONLY_OPTIMAL_KHR = 1000241003
#endif

#if VK_KHR_video_encode_queue
pattern VK_IMAGE_LAYOUT_VIDEO_ENCODE_DST_KHR :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_VIDEO_ENCODE_DST_KHR = 1000299000
#endif

#if VK_KHR_video_encode_queue
pattern VK_IMAGE_LAYOUT_VIDEO_ENCODE_SRC_KHR :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_VIDEO_ENCODE_SRC_KHR = 1000299001
#endif

#if VK_KHR_video_encode_queue
pattern VK_IMAGE_LAYOUT_VIDEO_ENCODE_DPB_KHR :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_VIDEO_ENCODE_DPB_KHR = 1000299002
#endif

#if VK_KHR_synchronization2
pattern VK_IMAGE_LAYOUT_READ_ONLY_OPTIMAL_KHR :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_READ_ONLY_OPTIMAL_KHR = 1000314000
#endif

#if VK_KHR_synchronization2
pattern VK_IMAGE_LAYOUT_ATTACHMENT_OPTIMAL_KHR :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_ATTACHMENT_OPTIMAL_KHR = 1000314001
#endif

#if VK_EXT_attachment_feedback_loop_layout
pattern VK_IMAGE_LAYOUT_ATTACHMENT_FEEDBACK_LOOP_OPTIMAL_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_LAYOUT_ATTACHMENT_FEEDBACK_LOOP_OPTIMAL_EXT = 1000339000
#endif
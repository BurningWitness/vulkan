{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkImageCreateFlagBits where

import Vulkan.Types.Base



type VkImageCreateFlagBits = VkFlags

-- | Image should support sparse backing
pattern VK_IMAGE_CREATE_SPARSE_BINDING_BIT :: (Eq a, Num a) => a
pattern VK_IMAGE_CREATE_SPARSE_BINDING_BIT = 1

-- | Image should support sparse backing with partial residency
pattern VK_IMAGE_CREATE_SPARSE_RESIDENCY_BIT :: (Eq a, Num a) => a
pattern VK_IMAGE_CREATE_SPARSE_RESIDENCY_BIT = 2

-- | Image should support constant data access to physical memory ranges mapped into multiple locations of sparse images
pattern VK_IMAGE_CREATE_SPARSE_ALIASED_BIT :: (Eq a, Num a) => a
pattern VK_IMAGE_CREATE_SPARSE_ALIASED_BIT = 4

-- | Allows image views to have different format than the base image
pattern VK_IMAGE_CREATE_MUTABLE_FORMAT_BIT :: (Eq a, Num a) => a
pattern VK_IMAGE_CREATE_MUTABLE_FORMAT_BIT = 8

-- | Allows creating image views with cube type from the created image
pattern VK_IMAGE_CREATE_CUBE_COMPATIBLE_BIT :: (Eq a, Num a) => a
pattern VK_IMAGE_CREATE_CUBE_COMPATIBLE_BIT = 16

#if VK_VERSION_1_1 || (VK_KHR_bind_memory2)
pattern VK_IMAGE_CREATE_ALIAS_BIT :: (Eq a, Num a) => a
pattern VK_IMAGE_CREATE_ALIAS_BIT = 1024
#endif

#if VK_VERSION_1_1 || (VK_KHR_device_group && VK_KHR_bind_memory2)
-- | Allows using VkBindImageMemoryDeviceGroupInfo::pSplitInstanceBindRegions when binding memory to the image
pattern VK_IMAGE_CREATE_SPLIT_INSTANCE_BIND_REGIONS_BIT :: (Eq a, Num a) => a
pattern VK_IMAGE_CREATE_SPLIT_INSTANCE_BIND_REGIONS_BIT = 64
#endif

#if VK_VERSION_1_1 || (VK_KHR_maintenance1)
-- | The 3D image can be viewed as a 2D or 2D array image
pattern VK_IMAGE_CREATE_2D_ARRAY_COMPATIBLE_BIT :: (Eq a, Num a) => a
pattern VK_IMAGE_CREATE_2D_ARRAY_COMPATIBLE_BIT = 32
#endif

#if VK_VERSION_1_1 || (VK_KHR_maintenance2)
pattern VK_IMAGE_CREATE_BLOCK_TEXEL_VIEW_COMPATIBLE_BIT :: (Eq a, Num a) => a
pattern VK_IMAGE_CREATE_BLOCK_TEXEL_VIEW_COMPATIBLE_BIT = 128
#endif

#if VK_VERSION_1_1 || (VK_KHR_maintenance2)
pattern VK_IMAGE_CREATE_EXTENDED_USAGE_BIT :: (Eq a, Num a) => a
pattern VK_IMAGE_CREATE_EXTENDED_USAGE_BIT = 256
#endif

#if VK_VERSION_1_1
-- | Image requires protected memory
pattern VK_IMAGE_CREATE_PROTECTED_BIT :: (Eq a, Num a) => a
pattern VK_IMAGE_CREATE_PROTECTED_BIT = 2048
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_IMAGE_CREATE_DISJOINT_BIT :: (Eq a, Num a) => a
pattern VK_IMAGE_CREATE_DISJOINT_BIT = 512
#endif

#if VK_NV_corner_sampled_image
pattern VK_IMAGE_CREATE_CORNER_SAMPLED_BIT_NV :: (Eq a, Num a) => a
pattern VK_IMAGE_CREATE_CORNER_SAMPLED_BIT_NV = 8192
#endif

#if VK_KHR_device_group && VK_KHR_bind_memory2
pattern VK_IMAGE_CREATE_SPLIT_INSTANCE_BIND_REGIONS_BIT_KHR :: (Eq a, Num a) => a
pattern VK_IMAGE_CREATE_SPLIT_INSTANCE_BIND_REGIONS_BIT_KHR = VK_IMAGE_CREATE_SPLIT_INSTANCE_BIND_REGIONS_BIT
#endif

#if VK_KHR_maintenance1
pattern VK_IMAGE_CREATE_2D_ARRAY_COMPATIBLE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_IMAGE_CREATE_2D_ARRAY_COMPATIBLE_BIT_KHR = VK_IMAGE_CREATE_2D_ARRAY_COMPATIBLE_BIT
#endif

#if VK_KHR_maintenance2
pattern VK_IMAGE_CREATE_BLOCK_TEXEL_VIEW_COMPATIBLE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_IMAGE_CREATE_BLOCK_TEXEL_VIEW_COMPATIBLE_BIT_KHR = VK_IMAGE_CREATE_BLOCK_TEXEL_VIEW_COMPATIBLE_BIT
#endif

#if VK_KHR_maintenance2
pattern VK_IMAGE_CREATE_EXTENDED_USAGE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_IMAGE_CREATE_EXTENDED_USAGE_BIT_KHR = VK_IMAGE_CREATE_EXTENDED_USAGE_BIT
#endif

#if VK_EXT_sample_locations
pattern VK_IMAGE_CREATE_SAMPLE_LOCATIONS_COMPATIBLE_DEPTH_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_CREATE_SAMPLE_LOCATIONS_COMPATIBLE_DEPTH_BIT_EXT = 4096
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_IMAGE_CREATE_DISJOINT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_IMAGE_CREATE_DISJOINT_BIT_KHR = VK_IMAGE_CREATE_DISJOINT_BIT
#endif

#if VK_KHR_bind_memory2
pattern VK_IMAGE_CREATE_ALIAS_BIT_KHR :: (Eq a, Num a) => a
pattern VK_IMAGE_CREATE_ALIAS_BIT_KHR = VK_IMAGE_CREATE_ALIAS_BIT
#endif

#if VK_EXT_fragment_density_map
pattern VK_IMAGE_CREATE_SUBSAMPLED_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_CREATE_SUBSAMPLED_BIT_EXT = 16384
#endif

#if VK_EXT_descriptor_buffer
pattern VK_IMAGE_CREATE_DESCRIPTOR_BUFFER_CAPTURE_REPLAY_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_CREATE_DESCRIPTOR_BUFFER_CAPTURE_REPLAY_BIT_EXT = 65536
#endif

#if VK_EXT_multisampled_render_to_single_sampled
pattern VK_IMAGE_CREATE_MULTISAMPLED_RENDER_TO_SINGLE_SAMPLED_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_CREATE_MULTISAMPLED_RENDER_TO_SINGLE_SAMPLED_BIT_EXT = 262144
#endif

#if VK_EXT_image_2d_view_of_3d
-- | Image is created with a layout where individual slices are capable of being used as 2D images
pattern VK_IMAGE_CREATE_2D_VIEW_COMPATIBLE_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_CREATE_2D_VIEW_COMPATIBLE_BIT_EXT = 131072
#endif

#if VK_QCOM_fragment_density_map_offset
pattern VK_IMAGE_CREATE_FRAGMENT_DENSITY_MAP_OFFSET_BIT_QCOM :: (Eq a, Num a) => a
pattern VK_IMAGE_CREATE_FRAGMENT_DENSITY_MAP_OFFSET_BIT_QCOM = 32768
#endif
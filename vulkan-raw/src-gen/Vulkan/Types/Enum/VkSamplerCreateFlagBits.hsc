{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSamplerCreateFlagBits where

import Vulkan.Types.Base



type VkSamplerCreateFlagBits = VkFlags

#if VK_EXT_fragment_density_map
pattern VK_SAMPLER_CREATE_SUBSAMPLED_BIT_EXT :: (Eq a, Num a) => a
pattern VK_SAMPLER_CREATE_SUBSAMPLED_BIT_EXT = 1
#endif

#if VK_EXT_fragment_density_map
pattern VK_SAMPLER_CREATE_SUBSAMPLED_COARSE_RECONSTRUCTION_BIT_EXT :: (Eq a, Num a) => a
pattern VK_SAMPLER_CREATE_SUBSAMPLED_COARSE_RECONSTRUCTION_BIT_EXT = 2
#endif

#if VK_EXT_descriptor_buffer
pattern VK_SAMPLER_CREATE_DESCRIPTOR_BUFFER_CAPTURE_REPLAY_BIT_EXT :: (Eq a, Num a) => a
pattern VK_SAMPLER_CREATE_DESCRIPTOR_BUFFER_CAPTURE_REPLAY_BIT_EXT = 8
#endif

#if VK_EXT_non_seamless_cube_map
pattern VK_SAMPLER_CREATE_NON_SEAMLESS_CUBE_MAP_BIT_EXT :: (Eq a, Num a) => a
pattern VK_SAMPLER_CREATE_NON_SEAMLESS_CUBE_MAP_BIT_EXT = 4
#endif

#if VK_QCOM_image_processing
pattern VK_SAMPLER_CREATE_IMAGE_PROCESSING_BIT_QCOM :: (Eq a, Num a) => a
pattern VK_SAMPLER_CREATE_IMAGE_PROCESSING_BIT_QCOM = 16
#endif
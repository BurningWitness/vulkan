{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDescriptorType where

import Data.Int



type VkDescriptorType = #{type int}

pattern VK_DESCRIPTOR_TYPE_SAMPLER :: (Eq a, Num a) => a
pattern VK_DESCRIPTOR_TYPE_SAMPLER = 0

pattern VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER :: (Eq a, Num a) => a
pattern VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER = 1

pattern VK_DESCRIPTOR_TYPE_SAMPLED_IMAGE :: (Eq a, Num a) => a
pattern VK_DESCRIPTOR_TYPE_SAMPLED_IMAGE = 2

pattern VK_DESCRIPTOR_TYPE_STORAGE_IMAGE :: (Eq a, Num a) => a
pattern VK_DESCRIPTOR_TYPE_STORAGE_IMAGE = 3

pattern VK_DESCRIPTOR_TYPE_UNIFORM_TEXEL_BUFFER :: (Eq a, Num a) => a
pattern VK_DESCRIPTOR_TYPE_UNIFORM_TEXEL_BUFFER = 4

pattern VK_DESCRIPTOR_TYPE_STORAGE_TEXEL_BUFFER :: (Eq a, Num a) => a
pattern VK_DESCRIPTOR_TYPE_STORAGE_TEXEL_BUFFER = 5

pattern VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER :: (Eq a, Num a) => a
pattern VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER = 6

pattern VK_DESCRIPTOR_TYPE_STORAGE_BUFFER :: (Eq a, Num a) => a
pattern VK_DESCRIPTOR_TYPE_STORAGE_BUFFER = 7

pattern VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER_DYNAMIC :: (Eq a, Num a) => a
pattern VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER_DYNAMIC = 8

pattern VK_DESCRIPTOR_TYPE_STORAGE_BUFFER_DYNAMIC :: (Eq a, Num a) => a
pattern VK_DESCRIPTOR_TYPE_STORAGE_BUFFER_DYNAMIC = 9

pattern VK_DESCRIPTOR_TYPE_INPUT_ATTACHMENT :: (Eq a, Num a) => a
pattern VK_DESCRIPTOR_TYPE_INPUT_ATTACHMENT = 10

#if VK_VERSION_1_3 || (VK_EXT_inline_uniform_block)
pattern VK_DESCRIPTOR_TYPE_INLINE_UNIFORM_BLOCK :: (Eq a, Num a) => a
pattern VK_DESCRIPTOR_TYPE_INLINE_UNIFORM_BLOCK = 1000138000
#endif

#if VK_EXT_inline_uniform_block
pattern VK_DESCRIPTOR_TYPE_INLINE_UNIFORM_BLOCK_EXT :: (Eq a, Num a) => a
pattern VK_DESCRIPTOR_TYPE_INLINE_UNIFORM_BLOCK_EXT = VK_DESCRIPTOR_TYPE_INLINE_UNIFORM_BLOCK
#endif

#if VK_KHR_acceleration_structure
pattern VK_DESCRIPTOR_TYPE_ACCELERATION_STRUCTURE_KHR :: (Eq a, Num a) => a
pattern VK_DESCRIPTOR_TYPE_ACCELERATION_STRUCTURE_KHR = 1000150000
#endif

#if VK_NV_ray_tracing
pattern VK_DESCRIPTOR_TYPE_ACCELERATION_STRUCTURE_NV :: (Eq a, Num a) => a
pattern VK_DESCRIPTOR_TYPE_ACCELERATION_STRUCTURE_NV = 1000165000
#endif

#if VK_VALVE_mutable_descriptor_type
pattern VK_DESCRIPTOR_TYPE_MUTABLE_VALVE :: (Eq a, Num a) => a
pattern VK_DESCRIPTOR_TYPE_MUTABLE_VALVE = VK_DESCRIPTOR_TYPE_MUTABLE_EXT
#endif

#if VK_QCOM_image_processing
pattern VK_DESCRIPTOR_TYPE_SAMPLE_WEIGHT_IMAGE_QCOM :: (Eq a, Num a) => a
pattern VK_DESCRIPTOR_TYPE_SAMPLE_WEIGHT_IMAGE_QCOM = 1000440000
#endif

#if VK_QCOM_image_processing
pattern VK_DESCRIPTOR_TYPE_BLOCK_MATCH_IMAGE_QCOM :: (Eq a, Num a) => a
pattern VK_DESCRIPTOR_TYPE_BLOCK_MATCH_IMAGE_QCOM = 1000440001
#endif

#if VK_EXT_mutable_descriptor_type
pattern VK_DESCRIPTOR_TYPE_MUTABLE_EXT :: (Eq a, Num a) => a
pattern VK_DESCRIPTOR_TYPE_MUTABLE_EXT = 1000351000
#endif
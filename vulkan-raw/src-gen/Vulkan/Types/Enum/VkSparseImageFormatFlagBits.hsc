{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSparseImageFormatFlagBits where

import Vulkan.Types.Base



type VkSparseImageFormatFlagBits = VkFlags

-- | Image uses a single mip tail region for all array layers
pattern VK_SPARSE_IMAGE_FORMAT_SINGLE_MIPTAIL_BIT :: (Eq a, Num a) => a
pattern VK_SPARSE_IMAGE_FORMAT_SINGLE_MIPTAIL_BIT = 1

-- | Image requires mip level dimensions to be an integer multiple of the sparse image block dimensions for non-tail mip levels.
pattern VK_SPARSE_IMAGE_FORMAT_ALIGNED_MIP_SIZE_BIT :: (Eq a, Num a) => a
pattern VK_SPARSE_IMAGE_FORMAT_ALIGNED_MIP_SIZE_BIT = 2

-- | Image uses a non-standard sparse image block dimensions
pattern VK_SPARSE_IMAGE_FORMAT_NONSTANDARD_BLOCK_SIZE_BIT :: (Eq a, Num a) => a
pattern VK_SPARSE_IMAGE_FORMAT_NONSTANDARD_BLOCK_SIZE_BIT = 4
{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkImageConstraintsInfoFlagBitsFUCHSIA where

import Vulkan.Types.Base



#if VK_FUCHSIA_buffer_collection
type VkImageConstraintsInfoFlagBitsFUCHSIA = VkFlags
#endif

#if VK_FUCHSIA_buffer_collection
pattern VK_IMAGE_CONSTRAINTS_INFO_CPU_READ_RARELY_FUCHSIA :: (Eq a, Num a) => a
pattern VK_IMAGE_CONSTRAINTS_INFO_CPU_READ_RARELY_FUCHSIA = 1
#endif

#if VK_FUCHSIA_buffer_collection
pattern VK_IMAGE_CONSTRAINTS_INFO_CPU_READ_OFTEN_FUCHSIA :: (Eq a, Num a) => a
pattern VK_IMAGE_CONSTRAINTS_INFO_CPU_READ_OFTEN_FUCHSIA = 2
#endif

#if VK_FUCHSIA_buffer_collection
pattern VK_IMAGE_CONSTRAINTS_INFO_CPU_WRITE_RARELY_FUCHSIA :: (Eq a, Num a) => a
pattern VK_IMAGE_CONSTRAINTS_INFO_CPU_WRITE_RARELY_FUCHSIA = 4
#endif

#if VK_FUCHSIA_buffer_collection
pattern VK_IMAGE_CONSTRAINTS_INFO_CPU_WRITE_OFTEN_FUCHSIA :: (Eq a, Num a) => a
pattern VK_IMAGE_CONSTRAINTS_INFO_CPU_WRITE_OFTEN_FUCHSIA = 8
#endif

#if VK_FUCHSIA_buffer_collection
pattern VK_IMAGE_CONSTRAINTS_INFO_PROTECTED_OPTIONAL_FUCHSIA :: (Eq a, Num a) => a
pattern VK_IMAGE_CONSTRAINTS_INFO_PROTECTED_OPTIONAL_FUCHSIA = 16
#endif
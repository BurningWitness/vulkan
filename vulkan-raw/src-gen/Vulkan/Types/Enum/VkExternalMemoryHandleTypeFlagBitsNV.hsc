{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagBitsNV where

import Vulkan.Types.Base



#if VK_NV_external_memory_capabilities
type VkExternalMemoryHandleTypeFlagBitsNV = VkFlags
#endif

#if VK_NV_external_memory_capabilities
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT_NV :: (Eq a, Num a) => a
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT_NV = 1
#endif

#if VK_NV_external_memory_capabilities
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_NV :: (Eq a, Num a) => a
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_NV = 2
#endif

#if VK_NV_external_memory_capabilities
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_IMAGE_BIT_NV :: (Eq a, Num a) => a
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_IMAGE_BIT_NV = 4
#endif

#if VK_NV_external_memory_capabilities
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_IMAGE_KMT_BIT_NV :: (Eq a, Num a) => a
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_IMAGE_KMT_BIT_NV = 8
#endif
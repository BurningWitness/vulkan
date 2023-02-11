{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagBits where

import Vulkan.Types.Base



#if VK_VERSION_1_1
type VkExternalMemoryHandleTypeFlagBits = VkFlags
#endif

#if VK_VERSION_1_1
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_FD_BIT :: (Eq a, Num a) => a
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_FD_BIT = 1
#endif

#if VK_VERSION_1_1
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT :: (Eq a, Num a) => a
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT = 2
#endif

#if VK_VERSION_1_1
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT :: (Eq a, Num a) => a
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT = 4
#endif

#if VK_VERSION_1_1
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_BIT :: (Eq a, Num a) => a
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_BIT = 8
#endif

#if VK_VERSION_1_1
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_KMT_BIT :: (Eq a, Num a) => a
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_KMT_BIT = 16
#endif

#if VK_VERSION_1_1
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_HEAP_BIT :: (Eq a, Num a) => a
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_HEAP_BIT = 32
#endif

#if VK_VERSION_1_1
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_RESOURCE_BIT :: (Eq a, Num a) => a
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_RESOURCE_BIT = 64
#endif

#if VK_KHR_external_memory_capabilities
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_FD_BIT_KHR :: (Eq a, Num a) => a
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_FD_BIT_KHR = VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_FD_BIT
#endif

#if VK_KHR_external_memory_capabilities
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT_KHR :: (Eq a, Num a) => a
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT_KHR = VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT
#endif

#if VK_KHR_external_memory_capabilities
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_KHR = VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT
#endif

#if VK_KHR_external_memory_capabilities
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_BIT_KHR = VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_BIT
#endif

#if VK_KHR_external_memory_capabilities
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_KMT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_KMT_BIT_KHR = VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_KMT_BIT
#endif

#if VK_KHR_external_memory_capabilities
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_HEAP_BIT_KHR :: (Eq a, Num a) => a
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_HEAP_BIT_KHR = VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_HEAP_BIT
#endif

#if VK_KHR_external_memory_capabilities
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_RESOURCE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_RESOURCE_BIT_KHR = VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_RESOURCE_BIT
#endif

#if VK_EXT_external_memory_dma_buf
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_DMA_BUF_BIT_EXT :: (Eq a, Num a) => a
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_DMA_BUF_BIT_EXT = 512
#endif

#if VK_ANDROID_external_memory_android_hardware_buffer
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_ANDROID_HARDWARE_BUFFER_BIT_ANDROID :: (Eq a, Num a) => a
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_ANDROID_HARDWARE_BUFFER_BIT_ANDROID = 1024
#endif

#if VK_EXT_external_memory_host
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_HOST_ALLOCATION_BIT_EXT :: (Eq a, Num a) => a
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_HOST_ALLOCATION_BIT_EXT = 128
#endif

#if VK_EXT_external_memory_host
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_HOST_MAPPED_FOREIGN_MEMORY_BIT_EXT :: (Eq a, Num a) => a
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_HOST_MAPPED_FOREIGN_MEMORY_BIT_EXT = 256
#endif

#if VK_FUCHSIA_external_memory
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_ZIRCON_VMO_BIT_FUCHSIA :: (Eq a, Num a) => a
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_ZIRCON_VMO_BIT_FUCHSIA = 2048
#endif

#if VK_NV_external_memory_rdma
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_RDMA_ADDRESS_BIT_NV :: (Eq a, Num a) => a
pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_RDMA_ADDRESS_BIT_NV = 4096
#endif
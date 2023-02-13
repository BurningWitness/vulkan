{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkExternalFenceHandleTypeFlagBits where

import Vulkan.Types.Base



#if VK_VERSION_1_1
type VkExternalFenceHandleTypeFlagBits = VkFlags
#endif

#if VK_VERSION_1_1
pattern VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_FD_BIT :: (Eq a, Num a) => a
pattern VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_FD_BIT = 1
#endif

#if VK_VERSION_1_1
pattern VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_BIT :: (Eq a, Num a) => a
pattern VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_BIT = 2
#endif

#if VK_VERSION_1_1
pattern VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT :: (Eq a, Num a) => a
pattern VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT = 4
#endif

#if VK_VERSION_1_1
pattern VK_EXTERNAL_FENCE_HANDLE_TYPE_SYNC_FD_BIT :: (Eq a, Num a) => a
pattern VK_EXTERNAL_FENCE_HANDLE_TYPE_SYNC_FD_BIT = 8
#endif

#if VK_VERSION_1_1
pattern VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_FD_BIT_KHR :: (Eq a, Num a) => a
pattern VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_FD_BIT_KHR = 1
#endif

#if VK_VERSION_1_1
pattern VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_BIT_KHR :: (Eq a, Num a) => a
pattern VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_BIT_KHR = 2
#endif

#if VK_VERSION_1_1
pattern VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_KHR = 4
#endif

#if VK_VERSION_1_1
pattern VK_EXTERNAL_FENCE_HANDLE_TYPE_SYNC_FD_BIT_KHR :: (Eq a, Num a) => a
pattern VK_EXTERNAL_FENCE_HANDLE_TYPE_SYNC_FD_BIT_KHR = 8
#endif
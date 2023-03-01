{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Define
  ( VulkanPtr
  , pattern VK_VERSION_PATCH
  , pattern VK_VERSION_MINOR
  , pattern VK_VERSION_MAJOR
  , pattern VK_USE_64_BIT_PTR_DEFINES
  , pattern VK_NULL_HANDLE
  , pattern VK_MAKE_VERSION
  , pattern VK_MAKE_API_VERSION
  , pattern VK_HEADER_VERSION_COMPLETE
  , pattern VK_HEADER_VERSION
  , pattern VK_API_VERSION_VARIANT
  , pattern VK_API_VERSION_PATCH
  , pattern VK_API_VERSION_MINOR
  , pattern VK_API_VERSION_MAJOR
  , pattern VK_API_VERSION_1_3
  , pattern VK_API_VERSION_1_2
  , pattern VK_API_VERSION_1_1
  , pattern VK_API_VERSION_1_0
  ) where

import Data.Word
import Foreign.Ptr
import Vulkan.Types.Handle



foreign import capi unsafe "vulkan/vulkan.h VK_VERSION_PATCH"
  vk_version_patch :: #{type uint32_t} -> #{type uint32_t}

pattern VK_VERSION_PATCH :: #{type uint32_t} -> #{type uint32_t}
pattern VK_VERSION_PATCH a <- (const Nothing -> Just a)
  where
    VK_VERSION_PATCH = vk_version_patch

foreign import capi unsafe "vulkan/vulkan.h VK_VERSION_MINOR"
  vk_version_minor :: #{type uint32_t} -> #{type uint32_t}

pattern VK_VERSION_MINOR :: #{type uint32_t} -> #{type uint32_t}
pattern VK_VERSION_MINOR a <- (const Nothing -> Just a)
  where
    VK_VERSION_MINOR = vk_version_minor

foreign import capi unsafe "vulkan/vulkan.h VK_VERSION_MAJOR"
  vk_version_major :: #{type uint32_t} -> #{type uint32_t}

pattern VK_VERSION_MAJOR :: #{type uint32_t} -> #{type uint32_t}
pattern VK_VERSION_MAJOR a <- (const Nothing -> Just a)
  where
    VK_VERSION_MAJOR = vk_version_major

pattern VK_USE_64_BIT_PTR_DEFINES :: (Eq a, Num a) => a
pattern VK_USE_64_BIT_PTR_DEFINES = #{const VK_USE_64_BIT_PTR_DEFINES}

class VulkanPtr ptr where
  vk_null_handle :: ptr a

instance VulkanPtr Ptr where
  vk_null_handle = nullPtr

instance VulkanPtr VkPtr where
#if VK_USE_64_BIT_PTR_DEFINES == 1
  vk_null_handle = VkPtr nullPtr
#else
  vk_null_handle = VkPtr 0
#endif

pattern VK_NULL_HANDLE :: (Eq (ptr a), VulkanPtr ptr) => ptr a
pattern VK_NULL_HANDLE <- ((== vk_null_handle) -> True)
  where
    VK_NULL_HANDLE = vk_null_handle

foreign import capi unsafe "vulkan/vulkan.h VK_MAKE_VERSION"
  vk_make_version :: #{type uint32_t} -> #{type uint32_t} -> #{type uint32_t} -> #{type uint32_t}

pattern VK_MAKE_VERSION :: #{type uint32_t} -> #{type uint32_t} -> #{type uint32_t} -> #{type uint32_t}
pattern VK_MAKE_VERSION a0 a1 a2 <- (const Nothing -> Just ((,,) a0 a1 a2))
  where
    VK_MAKE_VERSION = vk_make_version

foreign import capi unsafe "vulkan/vulkan.h VK_MAKE_API_VERSION"
  vk_make_api_version :: #{type uint32_t} -> #{type uint32_t} -> #{type uint32_t} -> #{type uint32_t} -> #{type uint32_t}

pattern VK_MAKE_API_VERSION :: #{type uint32_t} -> #{type uint32_t} -> #{type uint32_t} -> #{type uint32_t} -> #{type uint32_t}
pattern VK_MAKE_API_VERSION a0 a1 a2 a3 <- (const Nothing -> Just ((,,,) a0 a1 a2 a3))
  where
    VK_MAKE_API_VERSION = vk_make_api_version

pattern VK_HEADER_VERSION_COMPLETE :: (Eq a, Num a) => a
pattern VK_HEADER_VERSION_COMPLETE = #{const VK_HEADER_VERSION_COMPLETE}

pattern VK_HEADER_VERSION :: (Eq a, Num a) => a
pattern VK_HEADER_VERSION = #{const VK_HEADER_VERSION}

foreign import capi unsafe "vulkan/vulkan.h VK_API_VERSION_VARIANT"
  vk_api_version_variant :: #{type uint32_t} -> #{type uint32_t}

pattern VK_API_VERSION_VARIANT :: #{type uint32_t} -> #{type uint32_t}
pattern VK_API_VERSION_VARIANT a <- (const Nothing -> Just a)
  where
    VK_API_VERSION_VARIANT = vk_api_version_variant

foreign import capi unsafe "vulkan/vulkan.h VK_API_VERSION_PATCH"
  vk_api_version_patch :: #{type uint32_t} -> #{type uint32_t}

pattern VK_API_VERSION_PATCH :: #{type uint32_t} -> #{type uint32_t}
pattern VK_API_VERSION_PATCH a <- (const Nothing -> Just a)
  where
    VK_API_VERSION_PATCH = vk_api_version_patch

foreign import capi unsafe "vulkan/vulkan.h VK_API_VERSION_MINOR"
  vk_api_version_minor :: #{type uint32_t} -> #{type uint32_t}

pattern VK_API_VERSION_MINOR :: #{type uint32_t} -> #{type uint32_t}
pattern VK_API_VERSION_MINOR a <- (const Nothing -> Just a)
  where
    VK_API_VERSION_MINOR = vk_api_version_minor

foreign import capi unsafe "vulkan/vulkan.h VK_API_VERSION_MAJOR"
  vk_api_version_major :: #{type uint32_t} -> #{type uint32_t}

pattern VK_API_VERSION_MAJOR :: #{type uint32_t} -> #{type uint32_t}
pattern VK_API_VERSION_MAJOR a <- (const Nothing -> Just a)
  where
    VK_API_VERSION_MAJOR = vk_api_version_major

pattern VK_API_VERSION_1_3 :: (Eq a, Num a) => a
pattern VK_API_VERSION_1_3 = #{const VK_API_VERSION_1_3}

pattern VK_API_VERSION_1_2 :: (Eq a, Num a) => a
pattern VK_API_VERSION_1_2 = #{const VK_API_VERSION_1_2}

pattern VK_API_VERSION_1_1 :: (Eq a, Num a) => a
pattern VK_API_VERSION_1_1 = #{const VK_API_VERSION_1_1}

pattern VK_API_VERSION_1_0 :: (Eq a, Num a) => a
pattern VK_API_VERSION_1_0 = #{const VK_API_VERSION_1_0}
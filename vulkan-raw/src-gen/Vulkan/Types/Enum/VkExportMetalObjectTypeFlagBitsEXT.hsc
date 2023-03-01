{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkExportMetalObjectTypeFlagBitsEXT where

import Vulkan.Types.Base



#if VK_EXT_metal_objects
type VkExportMetalObjectTypeFlagBitsEXT = VkFlags
#endif

#if VK_EXT_metal_objects
pattern VK_EXPORT_METAL_OBJECT_TYPE_METAL_DEVICE_BIT_EXT :: (Eq a, Num a) => a
pattern VK_EXPORT_METAL_OBJECT_TYPE_METAL_DEVICE_BIT_EXT = 1
#endif

#if VK_EXT_metal_objects
pattern VK_EXPORT_METAL_OBJECT_TYPE_METAL_COMMAND_QUEUE_BIT_EXT :: (Eq a, Num a) => a
pattern VK_EXPORT_METAL_OBJECT_TYPE_METAL_COMMAND_QUEUE_BIT_EXT = 2
#endif

#if VK_EXT_metal_objects
pattern VK_EXPORT_METAL_OBJECT_TYPE_METAL_BUFFER_BIT_EXT :: (Eq a, Num a) => a
pattern VK_EXPORT_METAL_OBJECT_TYPE_METAL_BUFFER_BIT_EXT = 4
#endif

#if VK_EXT_metal_objects
pattern VK_EXPORT_METAL_OBJECT_TYPE_METAL_TEXTURE_BIT_EXT :: (Eq a, Num a) => a
pattern VK_EXPORT_METAL_OBJECT_TYPE_METAL_TEXTURE_BIT_EXT = 8
#endif

#if VK_EXT_metal_objects
pattern VK_EXPORT_METAL_OBJECT_TYPE_METAL_IOSURFACE_BIT_EXT :: (Eq a, Num a) => a
pattern VK_EXPORT_METAL_OBJECT_TYPE_METAL_IOSURFACE_BIT_EXT = 16
#endif

#if VK_EXT_metal_objects
pattern VK_EXPORT_METAL_OBJECT_TYPE_METAL_SHARED_EVENT_BIT_EXT :: (Eq a, Num a) => a
pattern VK_EXPORT_METAL_OBJECT_TYPE_METAL_SHARED_EVENT_BIT_EXT = 32
#endif
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Constant where

pattern VK_ATTACHMENT_UNUSED :: (Eq a, Num a) => a
pattern VK_ATTACHMENT_UNUSED = 4294967295

pattern VK_FALSE :: (Eq a, Num a) => a
pattern VK_FALSE = 0

pattern VK_LOD_CLAMP_NONE :: (Eq a, Fractional a) => a
pattern VK_LOD_CLAMP_NONE = 1000.0

pattern VK_LUID_SIZE :: (Eq a, Num a) => a
pattern VK_LUID_SIZE = 8

pattern VK_LUID_SIZE_KHR :: (Eq a, Num a) => a
pattern VK_LUID_SIZE_KHR = VK_LUID_SIZE

pattern VK_MAX_DESCRIPTION_SIZE :: (Eq a, Num a) => a
pattern VK_MAX_DESCRIPTION_SIZE = 256

pattern VK_MAX_DEVICE_GROUP_SIZE :: (Eq a, Num a) => a
pattern VK_MAX_DEVICE_GROUP_SIZE = 32

pattern VK_MAX_DEVICE_GROUP_SIZE_KHR :: (Eq a, Num a) => a
pattern VK_MAX_DEVICE_GROUP_SIZE_KHR = VK_MAX_DEVICE_GROUP_SIZE

pattern VK_MAX_DRIVER_INFO_SIZE :: (Eq a, Num a) => a
pattern VK_MAX_DRIVER_INFO_SIZE = 256

pattern VK_MAX_DRIVER_INFO_SIZE_KHR :: (Eq a, Num a) => a
pattern VK_MAX_DRIVER_INFO_SIZE_KHR = VK_MAX_DRIVER_INFO_SIZE

pattern VK_MAX_DRIVER_NAME_SIZE :: (Eq a, Num a) => a
pattern VK_MAX_DRIVER_NAME_SIZE = 256

pattern VK_MAX_DRIVER_NAME_SIZE_KHR :: (Eq a, Num a) => a
pattern VK_MAX_DRIVER_NAME_SIZE_KHR = VK_MAX_DRIVER_NAME_SIZE

pattern VK_MAX_EXTENSION_NAME_SIZE :: (Eq a, Num a) => a
pattern VK_MAX_EXTENSION_NAME_SIZE = 256

pattern VK_MAX_GLOBAL_PRIORITY_SIZE_EXT :: (Eq a, Num a) => a
pattern VK_MAX_GLOBAL_PRIORITY_SIZE_EXT = VK_MAX_GLOBAL_PRIORITY_SIZE_KHR

pattern VK_MAX_GLOBAL_PRIORITY_SIZE_KHR :: (Eq a, Num a) => a
pattern VK_MAX_GLOBAL_PRIORITY_SIZE_KHR = 16

-- | The maximum number of unique memory heaps, each of which supporting 1 or more memory types
pattern VK_MAX_MEMORY_HEAPS :: (Eq a, Num a) => a
pattern VK_MAX_MEMORY_HEAPS = 16

pattern VK_MAX_MEMORY_TYPES :: (Eq a, Num a) => a
pattern VK_MAX_MEMORY_TYPES = 32

pattern VK_MAX_PHYSICAL_DEVICE_NAME_SIZE :: (Eq a, Num a) => a
pattern VK_MAX_PHYSICAL_DEVICE_NAME_SIZE = 256

pattern VK_MAX_SHADER_MODULE_IDENTIFIER_SIZE_EXT :: (Eq a, Num a) => a
pattern VK_MAX_SHADER_MODULE_IDENTIFIER_SIZE_EXT = 32

pattern VK_QUEUE_FAMILY_EXTERNAL :: (Eq a, Num a) => a
pattern VK_QUEUE_FAMILY_EXTERNAL = 4294967294

pattern VK_QUEUE_FAMILY_EXTERNAL_KHR :: (Eq a, Num a) => a
pattern VK_QUEUE_FAMILY_EXTERNAL_KHR = VK_QUEUE_FAMILY_EXTERNAL

pattern VK_QUEUE_FAMILY_FOREIGN_EXT :: (Eq a, Num a) => a
pattern VK_QUEUE_FAMILY_FOREIGN_EXT = 4294967293

pattern VK_QUEUE_FAMILY_IGNORED :: (Eq a, Num a) => a
pattern VK_QUEUE_FAMILY_IGNORED = 4294967295

pattern VK_REMAINING_ARRAY_LAYERS :: (Eq a, Num a) => a
pattern VK_REMAINING_ARRAY_LAYERS = 4294967295

pattern VK_REMAINING_MIP_LEVELS :: (Eq a, Num a) => a
pattern VK_REMAINING_MIP_LEVELS = 4294967295

pattern VK_SHADER_UNUSED_KHR :: (Eq a, Num a) => a
pattern VK_SHADER_UNUSED_KHR = 4294967295

pattern VK_SHADER_UNUSED_NV :: (Eq a, Num a) => a
pattern VK_SHADER_UNUSED_NV = VK_SHADER_UNUSED_KHR

pattern VK_SUBPASS_EXTERNAL :: (Eq a, Num a) => a
pattern VK_SUBPASS_EXTERNAL = 4294967295

pattern VK_TRUE :: (Eq a, Num a) => a
pattern VK_TRUE = 1

pattern VK_UUID_SIZE :: (Eq a, Num a) => a
pattern VK_UUID_SIZE = 16

pattern VK_WHOLE_SIZE :: (Eq a, Num a) => a
pattern VK_WHOLE_SIZE = 18446744073709551615
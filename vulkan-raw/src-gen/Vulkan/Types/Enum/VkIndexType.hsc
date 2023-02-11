{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkIndexType where

import Data.Int



type VkIndexType = #{type int}

pattern VK_INDEX_TYPE_UINT16 :: (Eq a, Num a) => a
pattern VK_INDEX_TYPE_UINT16 = 0

pattern VK_INDEX_TYPE_UINT32 :: (Eq a, Num a) => a
pattern VK_INDEX_TYPE_UINT32 = 1

#if (VK_KHR_acceleration_structure) || (VK_NV_ray_tracing)
pattern VK_INDEX_TYPE_NONE_KHR :: (Eq a, Num a) => a
pattern VK_INDEX_TYPE_NONE_KHR = 1000165000
#endif

#if VK_NV_ray_tracing
pattern VK_INDEX_TYPE_NONE_NV :: (Eq a, Num a) => a
pattern VK_INDEX_TYPE_NONE_NV = VK_INDEX_TYPE_NONE_KHR
#endif

#if VK_EXT_index_type_uint8
pattern VK_INDEX_TYPE_UINT8_EXT :: (Eq a, Num a) => a
pattern VK_INDEX_TYPE_UINT8_EXT = 1000265000
#endif
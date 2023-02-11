{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkComponentTypeNV where

import Data.Int



#if VK_NV_cooperative_matrix
type VkComponentTypeNV = #{type int}
#endif

#if VK_NV_cooperative_matrix
pattern VK_COMPONENT_TYPE_FLOAT16_NV :: (Eq a, Num a) => a
pattern VK_COMPONENT_TYPE_FLOAT16_NV = 0
#endif

#if VK_NV_cooperative_matrix
pattern VK_COMPONENT_TYPE_FLOAT32_NV :: (Eq a, Num a) => a
pattern VK_COMPONENT_TYPE_FLOAT32_NV = 1
#endif

#if VK_NV_cooperative_matrix
pattern VK_COMPONENT_TYPE_FLOAT64_NV :: (Eq a, Num a) => a
pattern VK_COMPONENT_TYPE_FLOAT64_NV = 2
#endif

#if VK_NV_cooperative_matrix
pattern VK_COMPONENT_TYPE_SINT8_NV :: (Eq a, Num a) => a
pattern VK_COMPONENT_TYPE_SINT8_NV = 3
#endif

#if VK_NV_cooperative_matrix
pattern VK_COMPONENT_TYPE_SINT16_NV :: (Eq a, Num a) => a
pattern VK_COMPONENT_TYPE_SINT16_NV = 4
#endif

#if VK_NV_cooperative_matrix
pattern VK_COMPONENT_TYPE_SINT32_NV :: (Eq a, Num a) => a
pattern VK_COMPONENT_TYPE_SINT32_NV = 5
#endif

#if VK_NV_cooperative_matrix
pattern VK_COMPONENT_TYPE_SINT64_NV :: (Eq a, Num a) => a
pattern VK_COMPONENT_TYPE_SINT64_NV = 6
#endif

#if VK_NV_cooperative_matrix
pattern VK_COMPONENT_TYPE_UINT8_NV :: (Eq a, Num a) => a
pattern VK_COMPONENT_TYPE_UINT8_NV = 7
#endif

#if VK_NV_cooperative_matrix
pattern VK_COMPONENT_TYPE_UINT16_NV :: (Eq a, Num a) => a
pattern VK_COMPONENT_TYPE_UINT16_NV = 8
#endif

#if VK_NV_cooperative_matrix
pattern VK_COMPONENT_TYPE_UINT32_NV :: (Eq a, Num a) => a
pattern VK_COMPONENT_TYPE_UINT32_NV = 9
#endif

#if VK_NV_cooperative_matrix
pattern VK_COMPONENT_TYPE_UINT64_NV :: (Eq a, Num a) => a
pattern VK_COMPONENT_TYPE_UINT64_NV = 10
#endif
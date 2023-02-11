{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPointClippingBehavior where

import Data.Int



#if VK_VERSION_1_1
type VkPointClippingBehavior = #{type int}
#endif

#if VK_VERSION_1_1
pattern VK_POINT_CLIPPING_BEHAVIOR_ALL_CLIP_PLANES :: (Eq a, Num a) => a
pattern VK_POINT_CLIPPING_BEHAVIOR_ALL_CLIP_PLANES = 0
#endif

#if VK_VERSION_1_1
pattern VK_POINT_CLIPPING_BEHAVIOR_USER_CLIP_PLANES_ONLY :: (Eq a, Num a) => a
pattern VK_POINT_CLIPPING_BEHAVIOR_USER_CLIP_PLANES_ONLY = 1
#endif

#if VK_KHR_maintenance2
pattern VK_POINT_CLIPPING_BEHAVIOR_ALL_CLIP_PLANES_KHR :: (Eq a, Num a) => a
pattern VK_POINT_CLIPPING_BEHAVIOR_ALL_CLIP_PLANES_KHR = VK_POINT_CLIPPING_BEHAVIOR_ALL_CLIP_PLANES
#endif

#if VK_KHR_maintenance2
pattern VK_POINT_CLIPPING_BEHAVIOR_USER_CLIP_PLANES_ONLY_KHR :: (Eq a, Num a) => a
pattern VK_POINT_CLIPPING_BEHAVIOR_USER_CLIP_PLANES_ONLY_KHR = VK_POINT_CLIPPING_BEHAVIOR_USER_CLIP_PLANES_ONLY
#endif
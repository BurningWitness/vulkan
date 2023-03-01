{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkScopeNV where

import Data.Int



#if VK_NV_cooperative_matrix
type VkScopeNV = #{type int}
#endif

#if VK_NV_cooperative_matrix
pattern VK_SCOPE_DEVICE_NV :: (Eq a, Num a) => a
pattern VK_SCOPE_DEVICE_NV = 1
#endif

#if VK_NV_cooperative_matrix
pattern VK_SCOPE_WORKGROUP_NV :: (Eq a, Num a) => a
pattern VK_SCOPE_WORKGROUP_NV = 2
#endif

#if VK_NV_cooperative_matrix
pattern VK_SCOPE_SUBGROUP_NV :: (Eq a, Num a) => a
pattern VK_SCOPE_SUBGROUP_NV = 3
#endif

#if VK_NV_cooperative_matrix
pattern VK_SCOPE_QUEUE_FAMILY_NV :: (Eq a, Num a) => a
pattern VK_SCOPE_QUEUE_FAMILY_NV = 5
#endif
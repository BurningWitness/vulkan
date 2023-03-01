{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSubgroupFeatureFlagBits where

import Vulkan.Types.Base



#if VK_VERSION_1_1
type VkSubgroupFeatureFlagBits = VkFlags
#endif

#if VK_VERSION_1_1
-- | Basic subgroup operations
pattern VK_SUBGROUP_FEATURE_BASIC_BIT :: (Eq a, Num a) => a
pattern VK_SUBGROUP_FEATURE_BASIC_BIT = 1
#endif

#if VK_VERSION_1_1
-- | Vote subgroup operations
pattern VK_SUBGROUP_FEATURE_VOTE_BIT :: (Eq a, Num a) => a
pattern VK_SUBGROUP_FEATURE_VOTE_BIT = 2
#endif

#if VK_VERSION_1_1
-- | Arithmetic subgroup operations
pattern VK_SUBGROUP_FEATURE_ARITHMETIC_BIT :: (Eq a, Num a) => a
pattern VK_SUBGROUP_FEATURE_ARITHMETIC_BIT = 4
#endif

#if VK_VERSION_1_1
-- | Ballot subgroup operations
pattern VK_SUBGROUP_FEATURE_BALLOT_BIT :: (Eq a, Num a) => a
pattern VK_SUBGROUP_FEATURE_BALLOT_BIT = 8
#endif

#if VK_VERSION_1_1
-- | Shuffle subgroup operations
pattern VK_SUBGROUP_FEATURE_SHUFFLE_BIT :: (Eq a, Num a) => a
pattern VK_SUBGROUP_FEATURE_SHUFFLE_BIT = 16
#endif

#if VK_VERSION_1_1
-- | Shuffle relative subgroup operations
pattern VK_SUBGROUP_FEATURE_SHUFFLE_RELATIVE_BIT :: (Eq a, Num a) => a
pattern VK_SUBGROUP_FEATURE_SHUFFLE_RELATIVE_BIT = 32
#endif

#if VK_VERSION_1_1
-- | Clustered subgroup operations
pattern VK_SUBGROUP_FEATURE_CLUSTERED_BIT :: (Eq a, Num a) => a
pattern VK_SUBGROUP_FEATURE_CLUSTERED_BIT = 64
#endif

#if VK_VERSION_1_1
-- | Quad subgroup operations
pattern VK_SUBGROUP_FEATURE_QUAD_BIT :: (Eq a, Num a) => a
pattern VK_SUBGROUP_FEATURE_QUAD_BIT = 128
#endif

#if VK_NV_shader_subgroup_partitioned
pattern VK_SUBGROUP_FEATURE_PARTITIONED_BIT_NV :: (Eq a, Num a) => a
pattern VK_SUBGROUP_FEATURE_PARTITIONED_BIT_NV = 256
#endif
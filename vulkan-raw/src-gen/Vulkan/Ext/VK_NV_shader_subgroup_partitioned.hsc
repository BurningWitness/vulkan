{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_shader_subgroup_partitioned

module Vulkan.Ext.VK_NV_shader_subgroup_partitioned
  ( pattern VK_NV_SHADER_SUBGROUP_PARTITIONED_SPEC_VERSION
  , pattern VK_NV_SHADER_SUBGROUP_PARTITIONED_EXTENSION_NAME
  , pattern VK_SUBGROUP_FEATURE_PARTITIONED_BIT_NV
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkSubgroupFeatureFlagBits
import Vulkan.Types.VkFun



pattern VK_NV_SHADER_SUBGROUP_PARTITIONED_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_SHADER_SUBGROUP_PARTITIONED_SPEC_VERSION = 1

pattern VK_NV_SHADER_SUBGROUP_PARTITIONED_EXTENSION_NAME :: CString
pattern VK_NV_SHADER_SUBGROUP_PARTITIONED_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_SHADER_SUBGROUP_PARTITIONED_EXTENSION_NAME = Ptr ("VK_NV_shader_subgroup_partitioned\0"##)

#else

module Vulkan.Ext.VK_NV_shader_subgroup_partitioned where

#endif
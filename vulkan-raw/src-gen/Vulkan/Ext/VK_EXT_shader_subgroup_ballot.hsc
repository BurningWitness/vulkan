{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_shader_subgroup_ballot

module Vulkan.Ext.VK_EXT_shader_subgroup_ballot
  ( pattern VK_EXT_SHADER_SUBGROUP_BALLOT_SPEC_VERSION
  , pattern VK_EXT_SHADER_SUBGROUP_BALLOT_EXTENSION_NAME
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.VkFun



pattern VK_EXT_SHADER_SUBGROUP_BALLOT_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_SHADER_SUBGROUP_BALLOT_SPEC_VERSION = 1

pattern VK_EXT_SHADER_SUBGROUP_BALLOT_EXTENSION_NAME :: CString
pattern VK_EXT_SHADER_SUBGROUP_BALLOT_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_SHADER_SUBGROUP_BALLOT_EXTENSION_NAME = Ptr ("VK_EXT_shader_subgroup_ballot\0"##)

#else

module Vulkan.Ext.VK_EXT_shader_subgroup_ballot where

#endif
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_sampler_mirror_clamp_to_edge

module Vulkan.Ext.VK_KHR_sampler_mirror_clamp_to_edge
  ( pattern VK_KHR_SAMPLER_MIRROR_CLAMP_TO_EDGE_SPEC_VERSION
  , pattern VK_KHR_SAMPLER_MIRROR_CLAMP_TO_EDGE_EXTENSION_NAME
  , pattern VK_SAMPLER_ADDRESS_MODE_MIRROR_CLAMP_TO_EDGE
  , pattern VK_SAMPLER_ADDRESS_MODE_MIRROR_CLAMP_TO_EDGE_KHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkSamplerAddressMode
import Vulkan.Types.VkFun



pattern VK_KHR_SAMPLER_MIRROR_CLAMP_TO_EDGE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_SAMPLER_MIRROR_CLAMP_TO_EDGE_SPEC_VERSION = 3

pattern VK_KHR_SAMPLER_MIRROR_CLAMP_TO_EDGE_EXTENSION_NAME :: CString
pattern VK_KHR_SAMPLER_MIRROR_CLAMP_TO_EDGE_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_SAMPLER_MIRROR_CLAMP_TO_EDGE_EXTENSION_NAME = Ptr ("VK_KHR_sampler_mirror_clamp_to_edge\0"##)

#else

module Vulkan.Ext.VK_KHR_sampler_mirror_clamp_to_edge where

#endif
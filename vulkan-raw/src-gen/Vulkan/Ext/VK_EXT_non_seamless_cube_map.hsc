{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_non_seamless_cube_map

module Vulkan.Ext.VK_EXT_non_seamless_cube_map
  ( pattern VK_EXT_NON_SEAMLESS_CUBE_MAP_SPEC_VERSION
  , pattern VK_EXT_NON_SEAMLESS_CUBE_MAP_EXTENSION_NAME
  , pattern VK_SAMPLER_CREATE_NON_SEAMLESS_CUBE_MAP_BIT_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_NON_SEAMLESS_CUBE_MAP_FEATURES_EXT
  , VkPhysicalDeviceNonSeamlessCubeMapFeaturesEXT (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkSamplerCreateFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceNonSeamlessCubeMapFeaturesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_NON_SEAMLESS_CUBE_MAP_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_NON_SEAMLESS_CUBE_MAP_SPEC_VERSION = 1

pattern VK_EXT_NON_SEAMLESS_CUBE_MAP_EXTENSION_NAME :: CString
pattern VK_EXT_NON_SEAMLESS_CUBE_MAP_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_NON_SEAMLESS_CUBE_MAP_EXTENSION_NAME = Ptr ("VK_EXT_non_seamless_cube_map\0"##)

#else

module Vulkan.Ext.VK_EXT_non_seamless_cube_map where

#endif
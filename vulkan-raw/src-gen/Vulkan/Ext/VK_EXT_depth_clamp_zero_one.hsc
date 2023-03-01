{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_depth_clamp_zero_one

module Vulkan.Ext.VK_EXT_depth_clamp_zero_one
  ( pattern VK_EXT_DEPTH_CLAMP_ZERO_ONE_SPEC_VERSION
  , pattern VK_EXT_DEPTH_CLAMP_ZERO_ONE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_CLAMP_ZERO_ONE_FEATURES_EXT
  , VkPhysicalDeviceDepthClampZeroOneFeaturesEXT (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceDepthClampZeroOneFeaturesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_DEPTH_CLAMP_ZERO_ONE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_DEPTH_CLAMP_ZERO_ONE_SPEC_VERSION = 1

pattern VK_EXT_DEPTH_CLAMP_ZERO_ONE_EXTENSION_NAME :: CString
pattern VK_EXT_DEPTH_CLAMP_ZERO_ONE_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_DEPTH_CLAMP_ZERO_ONE_EXTENSION_NAME = Ptr ("VK_EXT_depth_clamp_zero_one\0"##)

#else

module Vulkan.Ext.VK_EXT_depth_clamp_zero_one where

#endif
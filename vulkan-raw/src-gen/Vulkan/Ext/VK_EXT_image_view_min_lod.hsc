{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_image_view_min_lod

module Vulkan.Ext.VK_EXT_image_view_min_lod
  ( pattern VK_EXT_IMAGE_VIEW_MIN_LOD_SPEC_VERSION
  , pattern VK_EXT_IMAGE_VIEW_MIN_LOD_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_VIEW_MIN_LOD_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_IMAGE_VIEW_MIN_LOD_CREATE_INFO_EXT
  , VkPhysicalDeviceImageViewMinLodFeaturesEXT (..)
  , VkImageViewMinLodCreateInfoEXT (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkImageViewMinLodCreateInfoEXT
import Vulkan.Types.Struct.VkPhysicalDeviceImageViewMinLodFeaturesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_IMAGE_VIEW_MIN_LOD_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_IMAGE_VIEW_MIN_LOD_SPEC_VERSION = 1

pattern VK_EXT_IMAGE_VIEW_MIN_LOD_EXTENSION_NAME :: CString
pattern VK_EXT_IMAGE_VIEW_MIN_LOD_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_IMAGE_VIEW_MIN_LOD_EXTENSION_NAME = Ptr ("VK_EXT_image_view_min_lod\0"##)

#else

module Vulkan.Ext.VK_EXT_image_view_min_lod where

#endif
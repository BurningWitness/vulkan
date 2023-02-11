{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_image_2d_view_of_3d

module Vulkan.Ext.VK_EXT_image_2d_view_of_3d
  ( pattern VK_EXT_IMAGE_2D_VIEW_OF_3D_SPEC_VERSION
  , pattern VK_EXT_IMAGE_2D_VIEW_OF_3D_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_2D_VIEW_OF_3D_FEATURES_EXT
  , VkPhysicalDeviceImage2DViewOf3DFeaturesEXT (..)
  , pattern VK_IMAGE_CREATE_2D_VIEW_COMPATIBLE_BIT_EXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkImageCreateFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceImage2DViewOf3DFeaturesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_IMAGE_2D_VIEW_OF_3D_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_IMAGE_2D_VIEW_OF_3D_SPEC_VERSION = 1

pattern VK_EXT_IMAGE_2D_VIEW_OF_3D_EXTENSION_NAME :: CString
pattern VK_EXT_IMAGE_2D_VIEW_OF_3D_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_IMAGE_2D_VIEW_OF_3D_EXTENSION_NAME = Ptr ("VK_EXT_image_2d_view_of_3d\0"##)

#else

module Vulkan.Ext.VK_EXT_image_2d_view_of_3d where

#endif
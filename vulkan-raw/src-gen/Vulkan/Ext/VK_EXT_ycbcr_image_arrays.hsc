{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_ycbcr_image_arrays

module Vulkan.Ext.VK_EXT_ycbcr_image_arrays
  ( pattern VK_EXT_YCBCR_IMAGE_ARRAYS_SPEC_VERSION
  , pattern VK_EXT_YCBCR_IMAGE_ARRAYS_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_YCBCR_IMAGE_ARRAYS_FEATURES_EXT
  , VkPhysicalDeviceYcbcrImageArraysFeaturesEXT (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceYcbcrImageArraysFeaturesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_YCBCR_IMAGE_ARRAYS_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_YCBCR_IMAGE_ARRAYS_SPEC_VERSION = 1

pattern VK_EXT_YCBCR_IMAGE_ARRAYS_EXTENSION_NAME :: CString
pattern VK_EXT_YCBCR_IMAGE_ARRAYS_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_YCBCR_IMAGE_ARRAYS_EXTENSION_NAME = Ptr ("VK_EXT_ycbcr_image_arrays\0"##)

#else

module Vulkan.Ext.VK_EXT_ycbcr_image_arrays where

#endif
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_physical_device_drm

module Vulkan.Ext.VK_EXT_physical_device_drm
  ( pattern VK_EXT_PHYSICAL_DEVICE_DRM_SPEC_VERSION
  , pattern VK_EXT_PHYSICAL_DEVICE_DRM_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DRM_PROPERTIES_EXT
  , VkPhysicalDeviceDrmPropertiesEXT (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceDrmPropertiesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_PHYSICAL_DEVICE_DRM_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_PHYSICAL_DEVICE_DRM_SPEC_VERSION = 1

pattern VK_EXT_PHYSICAL_DEVICE_DRM_EXTENSION_NAME :: CString
pattern VK_EXT_PHYSICAL_DEVICE_DRM_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_PHYSICAL_DEVICE_DRM_EXTENSION_NAME = Ptr ("VK_EXT_physical_device_drm\0"##)

#else

module Vulkan.Ext.VK_EXT_physical_device_drm where

#endif
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_image_drm_format_modifier

module Vulkan.Ext.VK_EXT_image_drm_format_modifier
  ( pattern VK_EXT_IMAGE_DRM_FORMAT_MODIFIER_SPEC_VERSION
  , pattern VK_EXT_IMAGE_DRM_FORMAT_MODIFIER_EXTENSION_NAME
  , pattern VK_ERROR_INVALID_DRM_FORMAT_MODIFIER_PLANE_LAYOUT_EXT
  , pattern VK_STRUCTURE_TYPE_DRM_FORMAT_MODIFIER_PROPERTIES_LIST_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_DRM_FORMAT_MODIFIER_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_LIST_CREATE_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_EXPLICIT_CREATE_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_PROPERTIES_EXT
  , pattern VK_IMAGE_TILING_DRM_FORMAT_MODIFIER_EXT
  , pattern VK_IMAGE_ASPECT_MEMORY_PLANE_0_BIT_EXT
  , pattern VK_IMAGE_ASPECT_MEMORY_PLANE_1_BIT_EXT
  , pattern VK_IMAGE_ASPECT_MEMORY_PLANE_2_BIT_EXT
  , pattern VK_IMAGE_ASPECT_MEMORY_PLANE_3_BIT_EXT
  , VkDrmFormatModifierPropertiesListEXT (..)
  , VkDrmFormatModifierPropertiesEXT (..)
  , VkPhysicalDeviceImageDrmFormatModifierInfoEXT (..)
  , VkImageDrmFormatModifierListCreateInfoEXT (..)
  , VkImageDrmFormatModifierExplicitCreateInfoEXT (..)
  , VkImageDrmFormatModifierPropertiesEXT (..)
  , VkGetImageDrmFormatModifierPropertiesEXT
  , vkFunGetImageDrmFormatModifierPropertiesEXT
#if VK_KHR_format_feature_flags2
  , VkDrmFormatModifierPropertiesList2EXT (..)
  , VkDrmFormatModifierProperties2EXT (..)
  , pattern VK_STRUCTURE_TYPE_DRM_FORMAT_MODIFIER_PROPERTIES_LIST_2_EXT
#endif
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkImageAspectFlagBits
import Vulkan.Types.Enum.VkImageTiling
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDrmFormatModifierProperties2EXT
import Vulkan.Types.Struct.VkDrmFormatModifierPropertiesEXT
import Vulkan.Types.Struct.VkDrmFormatModifierPropertiesList2EXT
import Vulkan.Types.Struct.VkDrmFormatModifierPropertiesListEXT
import Vulkan.Types.Struct.VkImageDrmFormatModifierExplicitCreateInfoEXT
import Vulkan.Types.Struct.VkImageDrmFormatModifierListCreateInfoEXT
import Vulkan.Types.Struct.VkImageDrmFormatModifierPropertiesEXT
import Vulkan.Types.Struct.VkPhysicalDeviceImageDrmFormatModifierInfoEXT
import Vulkan.Types.Command.VkGetImageDrmFormatModifierPropertiesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_IMAGE_DRM_FORMAT_MODIFIER_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_IMAGE_DRM_FORMAT_MODIFIER_SPEC_VERSION = 2

pattern VK_EXT_IMAGE_DRM_FORMAT_MODIFIER_EXTENSION_NAME :: CString
pattern VK_EXT_IMAGE_DRM_FORMAT_MODIFIER_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_IMAGE_DRM_FORMAT_MODIFIER_EXTENSION_NAME = Ptr ("VK_EXT_image_drm_format_modifier\0"##)

#else

module Vulkan.Ext.VK_EXT_image_drm_format_modifier where

#endif
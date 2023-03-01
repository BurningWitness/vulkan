{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_fragment_density_map

module Vulkan.Ext.VK_EXT_fragment_density_map
  ( pattern VK_EXT_FRAGMENT_DENSITY_MAP_SPEC_VERSION
  , pattern VK_EXT_FRAGMENT_DENSITY_MAP_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_PROPERTIES_EXT
  , pattern VK_STRUCTURE_TYPE_RENDER_PASS_FRAGMENT_DENSITY_MAP_CREATE_INFO_EXT
  , pattern VK_IMAGE_CREATE_SUBSAMPLED_BIT_EXT
  , pattern VK_IMAGE_LAYOUT_FRAGMENT_DENSITY_MAP_OPTIMAL_EXT
  , pattern VK_ACCESS_FRAGMENT_DENSITY_MAP_READ_BIT_EXT
  , pattern VK_FORMAT_FEATURE_FRAGMENT_DENSITY_MAP_BIT_EXT
  , pattern VK_IMAGE_USAGE_FRAGMENT_DENSITY_MAP_BIT_EXT
  , pattern VK_IMAGE_VIEW_CREATE_FRAGMENT_DENSITY_MAP_DYNAMIC_BIT_EXT
  , pattern VK_PIPELINE_STAGE_FRAGMENT_DENSITY_PROCESS_BIT_EXT
  , pattern VK_SAMPLER_CREATE_SUBSAMPLED_BIT_EXT
  , pattern VK_SAMPLER_CREATE_SUBSAMPLED_COARSE_RECONSTRUCTION_BIT_EXT
  , VkPhysicalDeviceFragmentDensityMapFeaturesEXT (..)
  , VkPhysicalDeviceFragmentDensityMapPropertiesEXT (..)
  , VkRenderPassFragmentDensityMapCreateInfoEXT (..)
#if VK_KHR_format_feature_flags2
  , pattern VK_FORMAT_FEATURE_2_FRAGMENT_DENSITY_MAP_BIT_EXT
#endif
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkAccessFlagBits
import Vulkan.Types.Enum.VkFormatFeatureFlagBits
import Vulkan.Types.Enum.VkFormatFeatureFlagBits2
import Vulkan.Types.Enum.VkImageCreateFlagBits
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkImageUsageFlagBits
import Vulkan.Types.Enum.VkImageViewCreateFlagBits
import Vulkan.Types.Enum.VkPipelineStageFlagBits
import Vulkan.Types.Enum.VkSamplerCreateFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceFragmentDensityMapFeaturesEXT
import Vulkan.Types.Struct.VkPhysicalDeviceFragmentDensityMapPropertiesEXT
import Vulkan.Types.Struct.VkRenderPassFragmentDensityMapCreateInfoEXT
import Vulkan.Types.VkFun



pattern VK_EXT_FRAGMENT_DENSITY_MAP_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_FRAGMENT_DENSITY_MAP_SPEC_VERSION = 2

pattern VK_EXT_FRAGMENT_DENSITY_MAP_EXTENSION_NAME :: CString
pattern VK_EXT_FRAGMENT_DENSITY_MAP_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_FRAGMENT_DENSITY_MAP_EXTENSION_NAME = Ptr ("VK_EXT_fragment_density_map\0"##)

#else

module Vulkan.Ext.VK_EXT_fragment_density_map where

#endif
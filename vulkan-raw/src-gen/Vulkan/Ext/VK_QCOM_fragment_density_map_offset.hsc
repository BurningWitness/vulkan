{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_QCOM_fragment_density_map_offset

module Vulkan.Ext.VK_QCOM_fragment_density_map_offset
  ( pattern VK_QCOM_FRAGMENT_DENSITY_MAP_OFFSET_SPEC_VERSION
  , pattern VK_QCOM_FRAGMENT_DENSITY_MAP_OFFSET_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_OFFSET_FEATURES_QCOM
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_OFFSET_PROPERTIES_QCOM
  , pattern VK_STRUCTURE_TYPE_SUBPASS_FRAGMENT_DENSITY_MAP_OFFSET_END_INFO_QCOM
  , pattern VK_IMAGE_CREATE_FRAGMENT_DENSITY_MAP_OFFSET_BIT_QCOM
  , VkPhysicalDeviceFragmentDensityMapOffsetFeaturesQCOM (..)
  , VkPhysicalDeviceFragmentDensityMapOffsetPropertiesQCOM (..)
  , VkSubpassFragmentDensityMapOffsetEndInfoQCOM (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkImageCreateFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceFragmentDensityMapOffsetFeaturesQCOM
import Vulkan.Types.Struct.VkPhysicalDeviceFragmentDensityMapOffsetPropertiesQCOM
import Vulkan.Types.Struct.VkSubpassFragmentDensityMapOffsetEndInfoQCOM
import Vulkan.Types.VkFun



pattern VK_QCOM_FRAGMENT_DENSITY_MAP_OFFSET_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_QCOM_FRAGMENT_DENSITY_MAP_OFFSET_SPEC_VERSION = 1

pattern VK_QCOM_FRAGMENT_DENSITY_MAP_OFFSET_EXTENSION_NAME :: CString
pattern VK_QCOM_FRAGMENT_DENSITY_MAP_OFFSET_EXTENSION_NAME <- (const False -> True)
  where
    VK_QCOM_FRAGMENT_DENSITY_MAP_OFFSET_EXTENSION_NAME = Ptr ("VK_QCOM_fragment_density_map_offset\0"##)

#else

module Vulkan.Ext.VK_QCOM_fragment_density_map_offset where

#endif
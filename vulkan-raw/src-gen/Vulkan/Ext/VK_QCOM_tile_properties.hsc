{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_QCOM_tile_properties

module Vulkan.Ext.VK_QCOM_tile_properties
  ( pattern VK_QCOM_TILE_PROPERTIES_SPEC_VERSION
  , pattern VK_QCOM_TILE_PROPERTIES_EXTENSION_NAME
  , VkGetFramebufferTilePropertiesQCOM
  , vkFunGetFramebufferTilePropertiesQCOM
  , VkGetDynamicRenderingTilePropertiesQCOM
  , vkFunGetDynamicRenderingTilePropertiesQCOM
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TILE_PROPERTIES_FEATURES_QCOM
  , pattern VK_STRUCTURE_TYPE_TILE_PROPERTIES_QCOM
  , VkPhysicalDeviceTilePropertiesFeaturesQCOM (..)
  , VkTilePropertiesQCOM (..)
  , VkRenderingInfoKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceTilePropertiesFeaturesQCOM
import Vulkan.Types.Struct.VkRenderingInfoKHR
import Vulkan.Types.Struct.VkTilePropertiesQCOM
import Vulkan.Types.Command.VkGetDynamicRenderingTilePropertiesQCOM
import Vulkan.Types.Command.VkGetFramebufferTilePropertiesQCOM
import Vulkan.Types.VkFun



pattern VK_QCOM_TILE_PROPERTIES_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_QCOM_TILE_PROPERTIES_SPEC_VERSION = 1

pattern VK_QCOM_TILE_PROPERTIES_EXTENSION_NAME :: CString
pattern VK_QCOM_TILE_PROPERTIES_EXTENSION_NAME <- (const False -> True)
  where
    VK_QCOM_TILE_PROPERTIES_EXTENSION_NAME = Ptr ("VK_QCOM_tile_properties\0"##)

#else

module Vulkan.Ext.VK_QCOM_tile_properties where

#endif
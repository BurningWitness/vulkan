{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_line_rasterization

module Vulkan.Ext.VK_EXT_line_rasterization
  ( pattern VK_EXT_LINE_RASTERIZATION_SPEC_VERSION
  , pattern VK_EXT_LINE_RASTERIZATION_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LINE_RASTERIZATION_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_LINE_STATE_CREATE_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LINE_RASTERIZATION_PROPERTIES_EXT
  , pattern VK_DYNAMIC_STATE_LINE_STIPPLE_EXT
  , VkPhysicalDeviceLineRasterizationFeaturesEXT (..)
  , VkPhysicalDeviceLineRasterizationPropertiesEXT (..)
  , VkPipelineRasterizationLineStateCreateInfoEXT (..)
  , VkLineRasterizationModeEXT
  , pattern VK_LINE_RASTERIZATION_MODE_DEFAULT_EXT
  , pattern VK_LINE_RASTERIZATION_MODE_RECTANGULAR_EXT
  , pattern VK_LINE_RASTERIZATION_MODE_BRESENHAM_EXT
  , pattern VK_LINE_RASTERIZATION_MODE_RECTANGULAR_SMOOTH_EXT
  , VkCmdSetLineStippleEXT
  , vkFunCmdSetLineStippleEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkDynamicState
import Vulkan.Types.Enum.VkLineRasterizationModeEXT
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceLineRasterizationFeaturesEXT
import Vulkan.Types.Struct.VkPhysicalDeviceLineRasterizationPropertiesEXT
import Vulkan.Types.Struct.VkPipelineRasterizationLineStateCreateInfoEXT
import Vulkan.Types.Command.VkCmdSetLineStippleEXT
import Vulkan.Types.VkFun



pattern VK_EXT_LINE_RASTERIZATION_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_LINE_RASTERIZATION_SPEC_VERSION = 1

pattern VK_EXT_LINE_RASTERIZATION_EXTENSION_NAME :: CString
pattern VK_EXT_LINE_RASTERIZATION_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_LINE_RASTERIZATION_EXTENSION_NAME = Ptr ("VK_EXT_line_rasterization\0"##)

#else

module Vulkan.Ext.VK_EXT_line_rasterization where

#endif
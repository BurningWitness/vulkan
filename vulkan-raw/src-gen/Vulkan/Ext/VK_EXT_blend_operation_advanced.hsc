{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_blend_operation_advanced

module Vulkan.Ext.VK_EXT_blend_operation_advanced
  ( pattern VK_EXT_BLEND_OPERATION_ADVANCED_SPEC_VERSION
  , pattern VK_EXT_BLEND_OPERATION_ADVANCED_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BLEND_OPERATION_ADVANCED_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BLEND_OPERATION_ADVANCED_PROPERTIES_EXT
  , pattern VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_ADVANCED_STATE_CREATE_INFO_EXT
  , VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT (..)
  , VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT (..)
  , VkPipelineColorBlendAdvancedStateCreateInfoEXT (..)
  , VkBlendOverlapEXT
  , pattern VK_BLEND_OVERLAP_UNCORRELATED_EXT
  , pattern VK_BLEND_OVERLAP_DISJOINT_EXT
  , pattern VK_BLEND_OVERLAP_CONJOINT_EXT
  , pattern VK_BLEND_OP_ZERO_EXT
  , pattern VK_BLEND_OP_SRC_EXT
  , pattern VK_BLEND_OP_DST_EXT
  , pattern VK_BLEND_OP_SRC_OVER_EXT
  , pattern VK_BLEND_OP_DST_OVER_EXT
  , pattern VK_BLEND_OP_SRC_IN_EXT
  , pattern VK_BLEND_OP_DST_IN_EXT
  , pattern VK_BLEND_OP_SRC_OUT_EXT
  , pattern VK_BLEND_OP_DST_OUT_EXT
  , pattern VK_BLEND_OP_SRC_ATOP_EXT
  , pattern VK_BLEND_OP_DST_ATOP_EXT
  , pattern VK_BLEND_OP_XOR_EXT
  , pattern VK_BLEND_OP_MULTIPLY_EXT
  , pattern VK_BLEND_OP_SCREEN_EXT
  , pattern VK_BLEND_OP_OVERLAY_EXT
  , pattern VK_BLEND_OP_DARKEN_EXT
  , pattern VK_BLEND_OP_LIGHTEN_EXT
  , pattern VK_BLEND_OP_COLORDODGE_EXT
  , pattern VK_BLEND_OP_COLORBURN_EXT
  , pattern VK_BLEND_OP_HARDLIGHT_EXT
  , pattern VK_BLEND_OP_SOFTLIGHT_EXT
  , pattern VK_BLEND_OP_DIFFERENCE_EXT
  , pattern VK_BLEND_OP_EXCLUSION_EXT
  , pattern VK_BLEND_OP_INVERT_EXT
  , pattern VK_BLEND_OP_INVERT_RGB_EXT
  , pattern VK_BLEND_OP_LINEARDODGE_EXT
  , pattern VK_BLEND_OP_LINEARBURN_EXT
  , pattern VK_BLEND_OP_VIVIDLIGHT_EXT
  , pattern VK_BLEND_OP_LINEARLIGHT_EXT
  , pattern VK_BLEND_OP_PINLIGHT_EXT
  , pattern VK_BLEND_OP_HARDMIX_EXT
  , pattern VK_BLEND_OP_HSL_HUE_EXT
  , pattern VK_BLEND_OP_HSL_SATURATION_EXT
  , pattern VK_BLEND_OP_HSL_COLOR_EXT
  , pattern VK_BLEND_OP_HSL_LUMINOSITY_EXT
  , pattern VK_BLEND_OP_PLUS_EXT
  , pattern VK_BLEND_OP_PLUS_CLAMPED_EXT
  , pattern VK_BLEND_OP_PLUS_CLAMPED_ALPHA_EXT
  , pattern VK_BLEND_OP_PLUS_DARKER_EXT
  , pattern VK_BLEND_OP_MINUS_EXT
  , pattern VK_BLEND_OP_MINUS_CLAMPED_EXT
  , pattern VK_BLEND_OP_CONTRAST_EXT
  , pattern VK_BLEND_OP_INVERT_OVG_EXT
  , pattern VK_BLEND_OP_RED_EXT
  , pattern VK_BLEND_OP_GREEN_EXT
  , pattern VK_BLEND_OP_BLUE_EXT
  , pattern VK_ACCESS_COLOR_ATTACHMENT_READ_NONCOHERENT_BIT_EXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkAccessFlagBits
import Vulkan.Types.Enum.VkBlendOp
import Vulkan.Types.Enum.VkBlendOverlapEXT
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT
import Vulkan.Types.Struct.VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT
import Vulkan.Types.Struct.VkPipelineColorBlendAdvancedStateCreateInfoEXT
import Vulkan.Types.VkFun



pattern VK_EXT_BLEND_OPERATION_ADVANCED_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_BLEND_OPERATION_ADVANCED_SPEC_VERSION = 2

pattern VK_EXT_BLEND_OPERATION_ADVANCED_EXTENSION_NAME :: CString
pattern VK_EXT_BLEND_OPERATION_ADVANCED_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_BLEND_OPERATION_ADVANCED_EXTENSION_NAME = Ptr ("VK_EXT_blend_operation_advanced\0"##)

#else

module Vulkan.Ext.VK_EXT_blend_operation_advanced where

#endif
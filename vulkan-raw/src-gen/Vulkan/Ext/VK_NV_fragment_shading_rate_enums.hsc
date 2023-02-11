{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_fragment_shading_rate_enums

module Vulkan.Ext.VK_NV_fragment_shading_rate_enums
  ( pattern VK_NV_FRAGMENT_SHADING_RATE_ENUMS_SPEC_VERSION
  , pattern VK_NV_FRAGMENT_SHADING_RATE_ENUMS_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_ENUMS_PROPERTIES_NV
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_ENUMS_FEATURES_NV
  , pattern VK_STRUCTURE_TYPE_PIPELINE_FRAGMENT_SHADING_RATE_ENUM_STATE_CREATE_INFO_NV
  , VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV (..)
  , VkPhysicalDeviceFragmentShadingRateEnumsPropertiesNV (..)
  , VkPipelineFragmentShadingRateEnumStateCreateInfoNV (..)
  , VkFragmentShadingRateNV
  , pattern VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_PIXEL_NV
  , pattern VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_1X2_PIXELS_NV
  , pattern VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_2X1_PIXELS_NV
  , pattern VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_2X2_PIXELS_NV
  , pattern VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_2X4_PIXELS_NV
  , pattern VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_4X2_PIXELS_NV
  , pattern VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_4X4_PIXELS_NV
  , pattern VK_FRAGMENT_SHADING_RATE_2_INVOCATIONS_PER_PIXEL_NV
  , pattern VK_FRAGMENT_SHADING_RATE_4_INVOCATIONS_PER_PIXEL_NV
  , pattern VK_FRAGMENT_SHADING_RATE_8_INVOCATIONS_PER_PIXEL_NV
  , pattern VK_FRAGMENT_SHADING_RATE_16_INVOCATIONS_PER_PIXEL_NV
  , pattern VK_FRAGMENT_SHADING_RATE_NO_INVOCATIONS_NV
  , VkFragmentShadingRateTypeNV
  , pattern VK_FRAGMENT_SHADING_RATE_TYPE_FRAGMENT_SIZE_NV
  , pattern VK_FRAGMENT_SHADING_RATE_TYPE_ENUMS_NV
  , VkCmdSetFragmentShadingRateEnumNV
  , vkFunCmdSetFragmentShadingRateEnumNV
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkFragmentShadingRateNV
import Vulkan.Types.Enum.VkFragmentShadingRateTypeNV
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV
import Vulkan.Types.Struct.VkPhysicalDeviceFragmentShadingRateEnumsPropertiesNV
import Vulkan.Types.Struct.VkPipelineFragmentShadingRateEnumStateCreateInfoNV
import Vulkan.Types.Command.VkCmdSetFragmentShadingRateEnumNV
import Vulkan.Types.VkFun



pattern VK_NV_FRAGMENT_SHADING_RATE_ENUMS_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_FRAGMENT_SHADING_RATE_ENUMS_SPEC_VERSION = 1

pattern VK_NV_FRAGMENT_SHADING_RATE_ENUMS_EXTENSION_NAME :: CString
pattern VK_NV_FRAGMENT_SHADING_RATE_ENUMS_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_FRAGMENT_SHADING_RATE_ENUMS_EXTENSION_NAME = Ptr ("VK_NV_fragment_shading_rate_enums\0"##)

#else

module Vulkan.Ext.VK_NV_fragment_shading_rate_enums where

#endif
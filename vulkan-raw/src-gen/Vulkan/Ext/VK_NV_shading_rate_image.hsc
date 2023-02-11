{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_shading_rate_image

module Vulkan.Ext.VK_NV_shading_rate_image
  ( pattern VK_NV_SHADING_RATE_IMAGE_SPEC_VERSION
  , pattern VK_NV_SHADING_RATE_IMAGE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_SHADING_RATE_IMAGE_STATE_CREATE_INFO_NV
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADING_RATE_IMAGE_FEATURES_NV
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADING_RATE_IMAGE_PROPERTIES_NV
  , pattern VK_IMAGE_LAYOUT_SHADING_RATE_OPTIMAL_NV
  , pattern VK_DYNAMIC_STATE_VIEWPORT_SHADING_RATE_PALETTE_NV
  , pattern VK_ACCESS_SHADING_RATE_IMAGE_READ_BIT_NV
  , pattern VK_IMAGE_USAGE_SHADING_RATE_IMAGE_BIT_NV
  , pattern VK_PIPELINE_STAGE_SHADING_RATE_IMAGE_BIT_NV
  , pattern VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_COARSE_SAMPLE_ORDER_STATE_CREATE_INFO_NV
  , pattern VK_DYNAMIC_STATE_VIEWPORT_COARSE_SAMPLE_ORDER_NV
  , VkShadingRatePaletteEntryNV
  , pattern VK_SHADING_RATE_PALETTE_ENTRY_NO_INVOCATIONS_NV
  , pattern VK_SHADING_RATE_PALETTE_ENTRY_16_INVOCATIONS_PER_PIXEL_NV
  , pattern VK_SHADING_RATE_PALETTE_ENTRY_8_INVOCATIONS_PER_PIXEL_NV
  , pattern VK_SHADING_RATE_PALETTE_ENTRY_4_INVOCATIONS_PER_PIXEL_NV
  , pattern VK_SHADING_RATE_PALETTE_ENTRY_2_INVOCATIONS_PER_PIXEL_NV
  , pattern VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_PIXEL_NV
  , pattern VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_2X1_PIXELS_NV
  , pattern VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_1X2_PIXELS_NV
  , pattern VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_2X2_PIXELS_NV
  , pattern VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_4X2_PIXELS_NV
  , pattern VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_2X4_PIXELS_NV
  , pattern VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_4X4_PIXELS_NV
  , VkShadingRatePaletteNV (..)
  , VkPipelineViewportShadingRateImageStateCreateInfoNV (..)
  , VkPhysicalDeviceShadingRateImageFeaturesNV (..)
  , VkPhysicalDeviceShadingRateImagePropertiesNV (..)
  , VkCoarseSampleLocationNV (..)
  , VkCoarseSampleOrderCustomNV (..)
  , VkPipelineViewportCoarseSampleOrderStateCreateInfoNV (..)
  , VkCoarseSampleOrderTypeNV
  , pattern VK_COARSE_SAMPLE_ORDER_TYPE_DEFAULT_NV
  , pattern VK_COARSE_SAMPLE_ORDER_TYPE_CUSTOM_NV
  , pattern VK_COARSE_SAMPLE_ORDER_TYPE_PIXEL_MAJOR_NV
  , pattern VK_COARSE_SAMPLE_ORDER_TYPE_SAMPLE_MAJOR_NV
  , VkCmdBindShadingRateImageNV
  , vkFunCmdBindShadingRateImageNV
  , VkCmdSetViewportShadingRatePaletteNV
  , vkFunCmdSetViewportShadingRatePaletteNV
  , VkCmdSetCoarseSampleOrderNV
  , vkFunCmdSetCoarseSampleOrderNV
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkAccessFlagBits
import Vulkan.Types.Enum.VkCoarseSampleOrderTypeNV
import Vulkan.Types.Enum.VkDynamicState
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkImageUsageFlagBits
import Vulkan.Types.Enum.VkPipelineStageFlagBits
import Vulkan.Types.Enum.VkShadingRatePaletteEntryNV
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkCoarseSampleLocationNV
import Vulkan.Types.Struct.VkCoarseSampleOrderCustomNV
import Vulkan.Types.Struct.VkPhysicalDeviceShadingRateImageFeaturesNV
import Vulkan.Types.Struct.VkPhysicalDeviceShadingRateImagePropertiesNV
import Vulkan.Types.Struct.VkPipelineViewportCoarseSampleOrderStateCreateInfoNV
import Vulkan.Types.Struct.VkPipelineViewportShadingRateImageStateCreateInfoNV
import Vulkan.Types.Struct.VkShadingRatePaletteNV
import Vulkan.Types.Command.VkCmdBindShadingRateImageNV
import Vulkan.Types.Command.VkCmdSetCoarseSampleOrderNV
import Vulkan.Types.Command.VkCmdSetViewportShadingRatePaletteNV
import Vulkan.Types.VkFun



pattern VK_NV_SHADING_RATE_IMAGE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_SHADING_RATE_IMAGE_SPEC_VERSION = 3

pattern VK_NV_SHADING_RATE_IMAGE_EXTENSION_NAME :: CString
pattern VK_NV_SHADING_RATE_IMAGE_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_SHADING_RATE_IMAGE_EXTENSION_NAME = Ptr ("VK_NV_shading_rate_image\0"##)

#else

module Vulkan.Ext.VK_NV_shading_rate_image where

#endif
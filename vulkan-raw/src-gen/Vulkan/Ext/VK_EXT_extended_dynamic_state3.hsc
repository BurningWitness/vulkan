{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state3

module Vulkan.Ext.VK_EXT_extended_dynamic_state3
  ( pattern VK_EXT_EXTENDED_DYNAMIC_STATE_3_SPEC_VERSION
  , pattern VK_EXT_EXTENDED_DYNAMIC_STATE_3_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTENDED_DYNAMIC_STATE_3_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTENDED_DYNAMIC_STATE_3_PROPERTIES_EXT
  , pattern VK_DYNAMIC_STATE_TESSELLATION_DOMAIN_ORIGIN_EXT
  , pattern VK_DYNAMIC_STATE_DEPTH_CLAMP_ENABLE_EXT
  , pattern VK_DYNAMIC_STATE_POLYGON_MODE_EXT
  , pattern VK_DYNAMIC_STATE_RASTERIZATION_SAMPLES_EXT
  , pattern VK_DYNAMIC_STATE_SAMPLE_MASK_EXT
  , pattern VK_DYNAMIC_STATE_ALPHA_TO_COVERAGE_ENABLE_EXT
  , pattern VK_DYNAMIC_STATE_ALPHA_TO_ONE_ENABLE_EXT
  , pattern VK_DYNAMIC_STATE_LOGIC_OP_ENABLE_EXT
  , pattern VK_DYNAMIC_STATE_COLOR_BLEND_ENABLE_EXT
  , pattern VK_DYNAMIC_STATE_COLOR_BLEND_EQUATION_EXT
  , pattern VK_DYNAMIC_STATE_COLOR_WRITE_MASK_EXT
  , pattern VK_DYNAMIC_STATE_RASTERIZATION_STREAM_EXT
  , pattern VK_DYNAMIC_STATE_CONSERVATIVE_RASTERIZATION_MODE_EXT
  , pattern VK_DYNAMIC_STATE_EXTRA_PRIMITIVE_OVERESTIMATION_SIZE_EXT
  , pattern VK_DYNAMIC_STATE_DEPTH_CLIP_ENABLE_EXT
  , pattern VK_DYNAMIC_STATE_SAMPLE_LOCATIONS_ENABLE_EXT
  , pattern VK_DYNAMIC_STATE_COLOR_BLEND_ADVANCED_EXT
  , pattern VK_DYNAMIC_STATE_PROVOKING_VERTEX_MODE_EXT
  , pattern VK_DYNAMIC_STATE_LINE_RASTERIZATION_MODE_EXT
  , pattern VK_DYNAMIC_STATE_LINE_STIPPLE_ENABLE_EXT
  , pattern VK_DYNAMIC_STATE_DEPTH_CLIP_NEGATIVE_ONE_TO_ONE_EXT
  , pattern VK_DYNAMIC_STATE_VIEWPORT_W_SCALING_ENABLE_NV
  , pattern VK_DYNAMIC_STATE_VIEWPORT_SWIZZLE_NV
  , pattern VK_DYNAMIC_STATE_COVERAGE_TO_COLOR_ENABLE_NV
  , pattern VK_DYNAMIC_STATE_COVERAGE_TO_COLOR_LOCATION_NV
  , pattern VK_DYNAMIC_STATE_COVERAGE_MODULATION_MODE_NV
  , pattern VK_DYNAMIC_STATE_COVERAGE_MODULATION_TABLE_ENABLE_NV
  , pattern VK_DYNAMIC_STATE_COVERAGE_MODULATION_TABLE_NV
  , pattern VK_DYNAMIC_STATE_SHADING_RATE_IMAGE_ENABLE_NV
  , pattern VK_DYNAMIC_STATE_REPRESENTATIVE_FRAGMENT_TEST_ENABLE_NV
  , pattern VK_DYNAMIC_STATE_COVERAGE_REDUCTION_MODE_NV
  , VkPhysicalDeviceExtendedDynamicState3FeaturesEXT (..)
  , VkPhysicalDeviceExtendedDynamicState3PropertiesEXT (..)
  , VkColorBlendEquationEXT (..)
  , VkColorBlendAdvancedEXT (..)
  , VkCmdSetTessellationDomainOriginEXT
  , vkFunCmdSetTessellationDomainOriginEXT
  , VkCmdSetDepthClampEnableEXT
  , vkFunCmdSetDepthClampEnableEXT
  , VkCmdSetPolygonModeEXT
  , vkFunCmdSetPolygonModeEXT
  , VkCmdSetRasterizationSamplesEXT
  , vkFunCmdSetRasterizationSamplesEXT
  , VkCmdSetSampleMaskEXT
  , vkFunCmdSetSampleMaskEXT
  , VkCmdSetAlphaToCoverageEnableEXT
  , vkFunCmdSetAlphaToCoverageEnableEXT
  , VkCmdSetAlphaToOneEnableEXT
  , vkFunCmdSetAlphaToOneEnableEXT
  , VkCmdSetLogicOpEnableEXT
  , vkFunCmdSetLogicOpEnableEXT
  , VkCmdSetColorBlendEnableEXT
  , vkFunCmdSetColorBlendEnableEXT
  , VkCmdSetColorBlendEquationEXT
  , vkFunCmdSetColorBlendEquationEXT
  , VkCmdSetColorWriteMaskEXT
  , vkFunCmdSetColorWriteMaskEXT
  , VkCmdSetRasterizationStreamEXT
  , vkFunCmdSetRasterizationStreamEXT
  , VkCmdSetConservativeRasterizationModeEXT
  , vkFunCmdSetConservativeRasterizationModeEXT
  , VkCmdSetExtraPrimitiveOverestimationSizeEXT
  , vkFunCmdSetExtraPrimitiveOverestimationSizeEXT
  , VkCmdSetDepthClipEnableEXT
  , vkFunCmdSetDepthClipEnableEXT
  , VkCmdSetSampleLocationsEnableEXT
  , vkFunCmdSetSampleLocationsEnableEXT
  , VkCmdSetColorBlendAdvancedEXT
  , vkFunCmdSetColorBlendAdvancedEXT
  , VkCmdSetProvokingVertexModeEXT
  , vkFunCmdSetProvokingVertexModeEXT
  , VkCmdSetLineRasterizationModeEXT
  , vkFunCmdSetLineRasterizationModeEXT
  , VkCmdSetLineStippleEnableEXT
  , vkFunCmdSetLineStippleEnableEXT
  , VkCmdSetDepthClipNegativeOneToOneEXT
  , vkFunCmdSetDepthClipNegativeOneToOneEXT
  , VkCmdSetViewportWScalingEnableNV
  , vkFunCmdSetViewportWScalingEnableNV
  , VkCmdSetViewportSwizzleNV
  , vkFunCmdSetViewportSwizzleNV
  , VkCmdSetCoverageToColorEnableNV
  , vkFunCmdSetCoverageToColorEnableNV
  , VkCmdSetCoverageToColorLocationNV
  , vkFunCmdSetCoverageToColorLocationNV
  , VkCmdSetCoverageModulationModeNV
  , vkFunCmdSetCoverageModulationModeNV
  , VkCmdSetCoverageModulationTableEnableNV
  , vkFunCmdSetCoverageModulationTableEnableNV
  , VkCmdSetCoverageModulationTableNV
  , vkFunCmdSetCoverageModulationTableNV
  , VkCmdSetShadingRateImageEnableNV
  , vkFunCmdSetShadingRateImageEnableNV
  , VkCmdSetRepresentativeFragmentTestEnableNV
  , vkFunCmdSetRepresentativeFragmentTestEnableNV
  , VkCmdSetCoverageReductionModeNV
  , vkFunCmdSetCoverageReductionModeNV
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkDynamicState
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkColorBlendAdvancedEXT
import Vulkan.Types.Struct.VkColorBlendEquationEXT
import Vulkan.Types.Struct.VkPhysicalDeviceExtendedDynamicState3FeaturesEXT
import Vulkan.Types.Struct.VkPhysicalDeviceExtendedDynamicState3PropertiesEXT
import Vulkan.Types.Command.VkCmdSetAlphaToCoverageEnableEXT
import Vulkan.Types.Command.VkCmdSetAlphaToOneEnableEXT
import Vulkan.Types.Command.VkCmdSetColorBlendAdvancedEXT
import Vulkan.Types.Command.VkCmdSetColorBlendEnableEXT
import Vulkan.Types.Command.VkCmdSetColorBlendEquationEXT
import Vulkan.Types.Command.VkCmdSetColorWriteMaskEXT
import Vulkan.Types.Command.VkCmdSetConservativeRasterizationModeEXT
import Vulkan.Types.Command.VkCmdSetCoverageModulationModeNV
import Vulkan.Types.Command.VkCmdSetCoverageModulationTableEnableNV
import Vulkan.Types.Command.VkCmdSetCoverageModulationTableNV
import Vulkan.Types.Command.VkCmdSetCoverageReductionModeNV
import Vulkan.Types.Command.VkCmdSetCoverageToColorEnableNV
import Vulkan.Types.Command.VkCmdSetCoverageToColorLocationNV
import Vulkan.Types.Command.VkCmdSetDepthClampEnableEXT
import Vulkan.Types.Command.VkCmdSetDepthClipEnableEXT
import Vulkan.Types.Command.VkCmdSetDepthClipNegativeOneToOneEXT
import Vulkan.Types.Command.VkCmdSetExtraPrimitiveOverestimationSizeEXT
import Vulkan.Types.Command.VkCmdSetLineRasterizationModeEXT
import Vulkan.Types.Command.VkCmdSetLineStippleEnableEXT
import Vulkan.Types.Command.VkCmdSetLogicOpEnableEXT
import Vulkan.Types.Command.VkCmdSetPolygonModeEXT
import Vulkan.Types.Command.VkCmdSetProvokingVertexModeEXT
import Vulkan.Types.Command.VkCmdSetRasterizationSamplesEXT
import Vulkan.Types.Command.VkCmdSetRasterizationStreamEXT
import Vulkan.Types.Command.VkCmdSetRepresentativeFragmentTestEnableNV
import Vulkan.Types.Command.VkCmdSetSampleLocationsEnableEXT
import Vulkan.Types.Command.VkCmdSetSampleMaskEXT
import Vulkan.Types.Command.VkCmdSetShadingRateImageEnableNV
import Vulkan.Types.Command.VkCmdSetTessellationDomainOriginEXT
import Vulkan.Types.Command.VkCmdSetViewportSwizzleNV
import Vulkan.Types.Command.VkCmdSetViewportWScalingEnableNV
import Vulkan.Types.VkFun



pattern VK_EXT_EXTENDED_DYNAMIC_STATE_3_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_EXTENDED_DYNAMIC_STATE_3_SPEC_VERSION = 2

pattern VK_EXT_EXTENDED_DYNAMIC_STATE_3_EXTENSION_NAME :: CString
pattern VK_EXT_EXTENDED_DYNAMIC_STATE_3_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_EXTENDED_DYNAMIC_STATE_3_EXTENSION_NAME = Ptr ("VK_EXT_extended_dynamic_state3\0"##)

#else

module Vulkan.Ext.VK_EXT_extended_dynamic_state3 where

#endif
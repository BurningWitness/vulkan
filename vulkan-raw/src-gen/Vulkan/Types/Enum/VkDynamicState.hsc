{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDynamicState where

import Data.Int



type VkDynamicState = #{type int}

pattern VK_DYNAMIC_STATE_VIEWPORT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_VIEWPORT = 0

pattern VK_DYNAMIC_STATE_SCISSOR :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_SCISSOR = 1

pattern VK_DYNAMIC_STATE_LINE_WIDTH :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_LINE_WIDTH = 2

pattern VK_DYNAMIC_STATE_DEPTH_BIAS :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_DEPTH_BIAS = 3

pattern VK_DYNAMIC_STATE_BLEND_CONSTANTS :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_BLEND_CONSTANTS = 4

pattern VK_DYNAMIC_STATE_DEPTH_BOUNDS :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_DEPTH_BOUNDS = 5

pattern VK_DYNAMIC_STATE_STENCIL_COMPARE_MASK :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_STENCIL_COMPARE_MASK = 6

pattern VK_DYNAMIC_STATE_STENCIL_WRITE_MASK :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_STENCIL_WRITE_MASK = 7

pattern VK_DYNAMIC_STATE_STENCIL_REFERENCE :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_STENCIL_REFERENCE = 8

#if VK_VERSION_1_3 || (VK_EXT_extended_dynamic_state)
pattern VK_DYNAMIC_STATE_CULL_MODE :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_CULL_MODE = 1000267000
#endif

#if VK_VERSION_1_3 || (VK_EXT_extended_dynamic_state)
pattern VK_DYNAMIC_STATE_FRONT_FACE :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_FRONT_FACE = 1000267001
#endif

#if VK_VERSION_1_3 || (VK_EXT_extended_dynamic_state)
pattern VK_DYNAMIC_STATE_PRIMITIVE_TOPOLOGY :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_PRIMITIVE_TOPOLOGY = 1000267002
#endif

#if VK_VERSION_1_3 || (VK_EXT_extended_dynamic_state)
pattern VK_DYNAMIC_STATE_VIEWPORT_WITH_COUNT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_VIEWPORT_WITH_COUNT = 1000267003
#endif

#if VK_VERSION_1_3 || (VK_EXT_extended_dynamic_state)
pattern VK_DYNAMIC_STATE_SCISSOR_WITH_COUNT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_SCISSOR_WITH_COUNT = 1000267004
#endif

#if VK_VERSION_1_3 || (VK_EXT_extended_dynamic_state)
pattern VK_DYNAMIC_STATE_VERTEX_INPUT_BINDING_STRIDE :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_VERTEX_INPUT_BINDING_STRIDE = 1000267005
#endif

#if VK_VERSION_1_3 || (VK_EXT_extended_dynamic_state)
pattern VK_DYNAMIC_STATE_DEPTH_TEST_ENABLE :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_DEPTH_TEST_ENABLE = 1000267006
#endif

#if VK_VERSION_1_3 || (VK_EXT_extended_dynamic_state)
pattern VK_DYNAMIC_STATE_DEPTH_WRITE_ENABLE :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_DEPTH_WRITE_ENABLE = 1000267007
#endif

#if VK_VERSION_1_3 || (VK_EXT_extended_dynamic_state)
pattern VK_DYNAMIC_STATE_DEPTH_COMPARE_OP :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_DEPTH_COMPARE_OP = 1000267008
#endif

#if VK_VERSION_1_3 || (VK_EXT_extended_dynamic_state)
pattern VK_DYNAMIC_STATE_DEPTH_BOUNDS_TEST_ENABLE :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_DEPTH_BOUNDS_TEST_ENABLE = 1000267009
#endif

#if VK_VERSION_1_3 || (VK_EXT_extended_dynamic_state)
pattern VK_DYNAMIC_STATE_STENCIL_TEST_ENABLE :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_STENCIL_TEST_ENABLE = 1000267010
#endif

#if VK_VERSION_1_3 || (VK_EXT_extended_dynamic_state)
pattern VK_DYNAMIC_STATE_STENCIL_OP :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_STENCIL_OP = 1000267011
#endif

#if VK_VERSION_1_3 || (VK_EXT_extended_dynamic_state2)
pattern VK_DYNAMIC_STATE_RASTERIZER_DISCARD_ENABLE :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_RASTERIZER_DISCARD_ENABLE = 1000377001
#endif

#if VK_VERSION_1_3 || (VK_EXT_extended_dynamic_state2)
pattern VK_DYNAMIC_STATE_DEPTH_BIAS_ENABLE :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_DEPTH_BIAS_ENABLE = 1000377002
#endif

#if VK_VERSION_1_3 || (VK_EXT_extended_dynamic_state2)
pattern VK_DYNAMIC_STATE_PRIMITIVE_RESTART_ENABLE :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_PRIMITIVE_RESTART_ENABLE = 1000377004
#endif

#if VK_NV_clip_space_w_scaling
pattern VK_DYNAMIC_STATE_VIEWPORT_W_SCALING_NV :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_VIEWPORT_W_SCALING_NV = 1000087000
#endif

#if VK_EXT_discard_rectangles
pattern VK_DYNAMIC_STATE_DISCARD_RECTANGLE_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_DISCARD_RECTANGLE_EXT = 1000099000
#endif

#if VK_EXT_sample_locations
pattern VK_DYNAMIC_STATE_SAMPLE_LOCATIONS_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_SAMPLE_LOCATIONS_EXT = 1000143000
#endif

#if VK_NV_shading_rate_image
pattern VK_DYNAMIC_STATE_VIEWPORT_SHADING_RATE_PALETTE_NV :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_VIEWPORT_SHADING_RATE_PALETTE_NV = 1000164004
#endif

#if VK_NV_shading_rate_image
pattern VK_DYNAMIC_STATE_VIEWPORT_COARSE_SAMPLE_ORDER_NV :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_VIEWPORT_COARSE_SAMPLE_ORDER_NV = 1000164006
#endif

#if VK_NV_scissor_exclusive
pattern VK_DYNAMIC_STATE_EXCLUSIVE_SCISSOR_NV :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_EXCLUSIVE_SCISSOR_NV = 1000205001
#endif

#if VK_KHR_fragment_shading_rate
pattern VK_DYNAMIC_STATE_FRAGMENT_SHADING_RATE_KHR :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_FRAGMENT_SHADING_RATE_KHR = 1000226000
#endif

#if VK_EXT_line_rasterization
pattern VK_DYNAMIC_STATE_LINE_STIPPLE_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_LINE_STIPPLE_EXT = 1000259000
#endif

#if VK_EXT_extended_dynamic_state
pattern VK_DYNAMIC_STATE_CULL_MODE_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_CULL_MODE_EXT = VK_DYNAMIC_STATE_CULL_MODE
#endif

#if VK_EXT_extended_dynamic_state
pattern VK_DYNAMIC_STATE_FRONT_FACE_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_FRONT_FACE_EXT = VK_DYNAMIC_STATE_FRONT_FACE
#endif

#if VK_EXT_extended_dynamic_state
pattern VK_DYNAMIC_STATE_PRIMITIVE_TOPOLOGY_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_PRIMITIVE_TOPOLOGY_EXT = VK_DYNAMIC_STATE_PRIMITIVE_TOPOLOGY
#endif

#if VK_EXT_extended_dynamic_state
pattern VK_DYNAMIC_STATE_VIEWPORT_WITH_COUNT_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_VIEWPORT_WITH_COUNT_EXT = VK_DYNAMIC_STATE_VIEWPORT_WITH_COUNT
#endif

#if VK_EXT_extended_dynamic_state
pattern VK_DYNAMIC_STATE_SCISSOR_WITH_COUNT_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_SCISSOR_WITH_COUNT_EXT = VK_DYNAMIC_STATE_SCISSOR_WITH_COUNT
#endif

#if VK_EXT_extended_dynamic_state
pattern VK_DYNAMIC_STATE_VERTEX_INPUT_BINDING_STRIDE_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_VERTEX_INPUT_BINDING_STRIDE_EXT = VK_DYNAMIC_STATE_VERTEX_INPUT_BINDING_STRIDE
#endif

#if VK_EXT_extended_dynamic_state
pattern VK_DYNAMIC_STATE_DEPTH_TEST_ENABLE_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_DEPTH_TEST_ENABLE_EXT = VK_DYNAMIC_STATE_DEPTH_TEST_ENABLE
#endif

#if VK_EXT_extended_dynamic_state
pattern VK_DYNAMIC_STATE_DEPTH_WRITE_ENABLE_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_DEPTH_WRITE_ENABLE_EXT = VK_DYNAMIC_STATE_DEPTH_WRITE_ENABLE
#endif

#if VK_EXT_extended_dynamic_state
pattern VK_DYNAMIC_STATE_DEPTH_COMPARE_OP_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_DEPTH_COMPARE_OP_EXT = VK_DYNAMIC_STATE_DEPTH_COMPARE_OP
#endif

#if VK_EXT_extended_dynamic_state
pattern VK_DYNAMIC_STATE_DEPTH_BOUNDS_TEST_ENABLE_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_DEPTH_BOUNDS_TEST_ENABLE_EXT = VK_DYNAMIC_STATE_DEPTH_BOUNDS_TEST_ENABLE
#endif

#if VK_EXT_extended_dynamic_state
pattern VK_DYNAMIC_STATE_STENCIL_TEST_ENABLE_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_STENCIL_TEST_ENABLE_EXT = VK_DYNAMIC_STATE_STENCIL_TEST_ENABLE
#endif

#if VK_EXT_extended_dynamic_state
pattern VK_DYNAMIC_STATE_STENCIL_OP_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_STENCIL_OP_EXT = VK_DYNAMIC_STATE_STENCIL_OP
#endif

#if VK_KHR_ray_tracing_pipeline
pattern VK_DYNAMIC_STATE_RAY_TRACING_PIPELINE_STACK_SIZE_KHR :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_RAY_TRACING_PIPELINE_STACK_SIZE_KHR = 1000347000
#endif

#if VK_EXT_vertex_input_dynamic_state
pattern VK_DYNAMIC_STATE_VERTEX_INPUT_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_VERTEX_INPUT_EXT = 1000352000
#endif

#if VK_EXT_extended_dynamic_state2
-- | Not promoted to 1.3
pattern VK_DYNAMIC_STATE_PATCH_CONTROL_POINTS_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_PATCH_CONTROL_POINTS_EXT = 1000377000
#endif

#if VK_EXT_extended_dynamic_state2
pattern VK_DYNAMIC_STATE_RASTERIZER_DISCARD_ENABLE_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_RASTERIZER_DISCARD_ENABLE_EXT = VK_DYNAMIC_STATE_RASTERIZER_DISCARD_ENABLE
#endif

#if VK_EXT_extended_dynamic_state2
pattern VK_DYNAMIC_STATE_DEPTH_BIAS_ENABLE_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_DEPTH_BIAS_ENABLE_EXT = VK_DYNAMIC_STATE_DEPTH_BIAS_ENABLE
#endif

#if VK_EXT_extended_dynamic_state2
-- | Not promoted to 1.3
pattern VK_DYNAMIC_STATE_LOGIC_OP_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_LOGIC_OP_EXT = 1000377003
#endif

#if VK_EXT_extended_dynamic_state2
pattern VK_DYNAMIC_STATE_PRIMITIVE_RESTART_ENABLE_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_PRIMITIVE_RESTART_ENABLE_EXT = VK_DYNAMIC_STATE_PRIMITIVE_RESTART_ENABLE
#endif

#if VK_EXT_color_write_enable
pattern VK_DYNAMIC_STATE_COLOR_WRITE_ENABLE_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_COLOR_WRITE_ENABLE_EXT = 1000381000
#endif

#if VK_EXT_extended_dynamic_state3
pattern VK_DYNAMIC_STATE_TESSELLATION_DOMAIN_ORIGIN_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_TESSELLATION_DOMAIN_ORIGIN_EXT = 1000455002
#endif

#if VK_EXT_extended_dynamic_state3
pattern VK_DYNAMIC_STATE_DEPTH_CLAMP_ENABLE_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_DEPTH_CLAMP_ENABLE_EXT = 1000455003
#endif

#if VK_EXT_extended_dynamic_state3
pattern VK_DYNAMIC_STATE_POLYGON_MODE_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_POLYGON_MODE_EXT = 1000455004
#endif

#if VK_EXT_extended_dynamic_state3
pattern VK_DYNAMIC_STATE_RASTERIZATION_SAMPLES_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_RASTERIZATION_SAMPLES_EXT = 1000455005
#endif

#if VK_EXT_extended_dynamic_state3
pattern VK_DYNAMIC_STATE_SAMPLE_MASK_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_SAMPLE_MASK_EXT = 1000455006
#endif

#if VK_EXT_extended_dynamic_state3
pattern VK_DYNAMIC_STATE_ALPHA_TO_COVERAGE_ENABLE_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_ALPHA_TO_COVERAGE_ENABLE_EXT = 1000455007
#endif

#if VK_EXT_extended_dynamic_state3
pattern VK_DYNAMIC_STATE_ALPHA_TO_ONE_ENABLE_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_ALPHA_TO_ONE_ENABLE_EXT = 1000455008
#endif

#if VK_EXT_extended_dynamic_state3
pattern VK_DYNAMIC_STATE_LOGIC_OP_ENABLE_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_LOGIC_OP_ENABLE_EXT = 1000455009
#endif

#if VK_EXT_extended_dynamic_state3
pattern VK_DYNAMIC_STATE_COLOR_BLEND_ENABLE_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_COLOR_BLEND_ENABLE_EXT = 1000455010
#endif

#if VK_EXT_extended_dynamic_state3
pattern VK_DYNAMIC_STATE_COLOR_BLEND_EQUATION_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_COLOR_BLEND_EQUATION_EXT = 1000455011
#endif

#if VK_EXT_extended_dynamic_state3
pattern VK_DYNAMIC_STATE_COLOR_WRITE_MASK_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_COLOR_WRITE_MASK_EXT = 1000455012
#endif

#if VK_EXT_extended_dynamic_state3
pattern VK_DYNAMIC_STATE_RASTERIZATION_STREAM_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_RASTERIZATION_STREAM_EXT = 1000455013
#endif

#if VK_EXT_extended_dynamic_state3
pattern VK_DYNAMIC_STATE_CONSERVATIVE_RASTERIZATION_MODE_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_CONSERVATIVE_RASTERIZATION_MODE_EXT = 1000455014
#endif

#if VK_EXT_extended_dynamic_state3
pattern VK_DYNAMIC_STATE_EXTRA_PRIMITIVE_OVERESTIMATION_SIZE_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_EXTRA_PRIMITIVE_OVERESTIMATION_SIZE_EXT = 1000455015
#endif

#if VK_EXT_extended_dynamic_state3
pattern VK_DYNAMIC_STATE_DEPTH_CLIP_ENABLE_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_DEPTH_CLIP_ENABLE_EXT = 1000455016
#endif

#if VK_EXT_extended_dynamic_state3
pattern VK_DYNAMIC_STATE_SAMPLE_LOCATIONS_ENABLE_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_SAMPLE_LOCATIONS_ENABLE_EXT = 1000455017
#endif

#if VK_EXT_extended_dynamic_state3
pattern VK_DYNAMIC_STATE_COLOR_BLEND_ADVANCED_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_COLOR_BLEND_ADVANCED_EXT = 1000455018
#endif

#if VK_EXT_extended_dynamic_state3
pattern VK_DYNAMIC_STATE_PROVOKING_VERTEX_MODE_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_PROVOKING_VERTEX_MODE_EXT = 1000455019
#endif

#if VK_EXT_extended_dynamic_state3
pattern VK_DYNAMIC_STATE_LINE_RASTERIZATION_MODE_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_LINE_RASTERIZATION_MODE_EXT = 1000455020
#endif

#if VK_EXT_extended_dynamic_state3
pattern VK_DYNAMIC_STATE_LINE_STIPPLE_ENABLE_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_LINE_STIPPLE_ENABLE_EXT = 1000455021
#endif

#if VK_EXT_extended_dynamic_state3
pattern VK_DYNAMIC_STATE_DEPTH_CLIP_NEGATIVE_ONE_TO_ONE_EXT :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_DEPTH_CLIP_NEGATIVE_ONE_TO_ONE_EXT = 1000455022
#endif

#if VK_EXT_extended_dynamic_state3
pattern VK_DYNAMIC_STATE_VIEWPORT_W_SCALING_ENABLE_NV :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_VIEWPORT_W_SCALING_ENABLE_NV = 1000455023
#endif

#if VK_EXT_extended_dynamic_state3
pattern VK_DYNAMIC_STATE_VIEWPORT_SWIZZLE_NV :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_VIEWPORT_SWIZZLE_NV = 1000455024
#endif

#if VK_EXT_extended_dynamic_state3
pattern VK_DYNAMIC_STATE_COVERAGE_TO_COLOR_ENABLE_NV :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_COVERAGE_TO_COLOR_ENABLE_NV = 1000455025
#endif

#if VK_EXT_extended_dynamic_state3
pattern VK_DYNAMIC_STATE_COVERAGE_TO_COLOR_LOCATION_NV :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_COVERAGE_TO_COLOR_LOCATION_NV = 1000455026
#endif

#if VK_EXT_extended_dynamic_state3
pattern VK_DYNAMIC_STATE_COVERAGE_MODULATION_MODE_NV :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_COVERAGE_MODULATION_MODE_NV = 1000455027
#endif

#if VK_EXT_extended_dynamic_state3
pattern VK_DYNAMIC_STATE_COVERAGE_MODULATION_TABLE_ENABLE_NV :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_COVERAGE_MODULATION_TABLE_ENABLE_NV = 1000455028
#endif

#if VK_EXT_extended_dynamic_state3
pattern VK_DYNAMIC_STATE_COVERAGE_MODULATION_TABLE_NV :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_COVERAGE_MODULATION_TABLE_NV = 1000455029
#endif

#if VK_EXT_extended_dynamic_state3
pattern VK_DYNAMIC_STATE_SHADING_RATE_IMAGE_ENABLE_NV :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_SHADING_RATE_IMAGE_ENABLE_NV = 1000455030
#endif

#if VK_EXT_extended_dynamic_state3
pattern VK_DYNAMIC_STATE_REPRESENTATIVE_FRAGMENT_TEST_ENABLE_NV :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_REPRESENTATIVE_FRAGMENT_TEST_ENABLE_NV = 1000455031
#endif

#if VK_EXT_extended_dynamic_state3
pattern VK_DYNAMIC_STATE_COVERAGE_REDUCTION_MODE_NV :: (Eq a, Num a) => a
pattern VK_DYNAMIC_STATE_COVERAGE_REDUCTION_MODE_NV = 1000455032
#endif
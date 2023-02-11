{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkBlendOp where

import Data.Int



type VkBlendOp = #{type int}

pattern VK_BLEND_OP_ADD :: (Eq a, Num a) => a
pattern VK_BLEND_OP_ADD = 0

pattern VK_BLEND_OP_SUBTRACT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_SUBTRACT = 1

pattern VK_BLEND_OP_REVERSE_SUBTRACT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_REVERSE_SUBTRACT = 2

pattern VK_BLEND_OP_MIN :: (Eq a, Num a) => a
pattern VK_BLEND_OP_MIN = 3

pattern VK_BLEND_OP_MAX :: (Eq a, Num a) => a
pattern VK_BLEND_OP_MAX = 4

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_ZERO_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_ZERO_EXT = 1000148000
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_SRC_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_SRC_EXT = 1000148001
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_DST_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_DST_EXT = 1000148002
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_SRC_OVER_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_SRC_OVER_EXT = 1000148003
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_DST_OVER_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_DST_OVER_EXT = 1000148004
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_SRC_IN_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_SRC_IN_EXT = 1000148005
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_DST_IN_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_DST_IN_EXT = 1000148006
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_SRC_OUT_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_SRC_OUT_EXT = 1000148007
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_DST_OUT_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_DST_OUT_EXT = 1000148008
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_SRC_ATOP_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_SRC_ATOP_EXT = 1000148009
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_DST_ATOP_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_DST_ATOP_EXT = 1000148010
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_XOR_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_XOR_EXT = 1000148011
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_MULTIPLY_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_MULTIPLY_EXT = 1000148012
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_SCREEN_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_SCREEN_EXT = 1000148013
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_OVERLAY_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_OVERLAY_EXT = 1000148014
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_DARKEN_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_DARKEN_EXT = 1000148015
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_LIGHTEN_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_LIGHTEN_EXT = 1000148016
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_COLORDODGE_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_COLORDODGE_EXT = 1000148017
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_COLORBURN_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_COLORBURN_EXT = 1000148018
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_HARDLIGHT_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_HARDLIGHT_EXT = 1000148019
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_SOFTLIGHT_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_SOFTLIGHT_EXT = 1000148020
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_DIFFERENCE_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_DIFFERENCE_EXT = 1000148021
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_EXCLUSION_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_EXCLUSION_EXT = 1000148022
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_INVERT_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_INVERT_EXT = 1000148023
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_INVERT_RGB_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_INVERT_RGB_EXT = 1000148024
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_LINEARDODGE_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_LINEARDODGE_EXT = 1000148025
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_LINEARBURN_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_LINEARBURN_EXT = 1000148026
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_VIVIDLIGHT_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_VIVIDLIGHT_EXT = 1000148027
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_LINEARLIGHT_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_LINEARLIGHT_EXT = 1000148028
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_PINLIGHT_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_PINLIGHT_EXT = 1000148029
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_HARDMIX_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_HARDMIX_EXT = 1000148030
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_HSL_HUE_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_HSL_HUE_EXT = 1000148031
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_HSL_SATURATION_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_HSL_SATURATION_EXT = 1000148032
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_HSL_COLOR_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_HSL_COLOR_EXT = 1000148033
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_HSL_LUMINOSITY_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_HSL_LUMINOSITY_EXT = 1000148034
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_PLUS_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_PLUS_EXT = 1000148035
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_PLUS_CLAMPED_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_PLUS_CLAMPED_EXT = 1000148036
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_PLUS_CLAMPED_ALPHA_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_PLUS_CLAMPED_ALPHA_EXT = 1000148037
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_PLUS_DARKER_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_PLUS_DARKER_EXT = 1000148038
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_MINUS_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_MINUS_EXT = 1000148039
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_MINUS_CLAMPED_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_MINUS_CLAMPED_EXT = 1000148040
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_CONTRAST_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_CONTRAST_EXT = 1000148041
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_INVERT_OVG_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_INVERT_OVG_EXT = 1000148042
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_RED_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_RED_EXT = 1000148043
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_GREEN_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_GREEN_EXT = 1000148044
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OP_BLUE_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OP_BLUE_EXT = 1000148045
#endif
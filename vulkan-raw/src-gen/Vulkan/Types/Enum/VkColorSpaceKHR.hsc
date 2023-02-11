{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkColorSpaceKHR where

import Data.Int



#if VK_KHR_surface
type VkColorSpaceKHR = #{type int}
#endif

#if VK_KHR_surface
pattern VK_COLOR_SPACE_SRGB_NONLINEAR_KHR :: (Eq a, Num a) => a
pattern VK_COLOR_SPACE_SRGB_NONLINEAR_KHR = 0
#endif

#if VK_KHR_surface
-- | Backwards-compatible alias containing a typo
pattern VK_COLORSPACE_SRGB_NONLINEAR_KHR :: (Eq a, Num a) => a
pattern VK_COLORSPACE_SRGB_NONLINEAR_KHR = VK_COLOR_SPACE_SRGB_NONLINEAR_KHR
#endif

#if VK_EXT_swapchain_colorspace
pattern VK_COLOR_SPACE_DISPLAY_P3_NONLINEAR_EXT :: (Eq a, Num a) => a
pattern VK_COLOR_SPACE_DISPLAY_P3_NONLINEAR_EXT = 1000104001
#endif

#if VK_EXT_swapchain_colorspace
pattern VK_COLOR_SPACE_EXTENDED_SRGB_LINEAR_EXT :: (Eq a, Num a) => a
pattern VK_COLOR_SPACE_EXTENDED_SRGB_LINEAR_EXT = 1000104002
#endif

#if VK_EXT_swapchain_colorspace
pattern VK_COLOR_SPACE_DISPLAY_P3_LINEAR_EXT :: (Eq a, Num a) => a
pattern VK_COLOR_SPACE_DISPLAY_P3_LINEAR_EXT = 1000104003
#endif

#if VK_EXT_swapchain_colorspace
pattern VK_COLOR_SPACE_DCI_P3_NONLINEAR_EXT :: (Eq a, Num a) => a
pattern VK_COLOR_SPACE_DCI_P3_NONLINEAR_EXT = 1000104004
#endif

#if VK_EXT_swapchain_colorspace
pattern VK_COLOR_SPACE_BT709_LINEAR_EXT :: (Eq a, Num a) => a
pattern VK_COLOR_SPACE_BT709_LINEAR_EXT = 1000104005
#endif

#if VK_EXT_swapchain_colorspace
pattern VK_COLOR_SPACE_BT709_NONLINEAR_EXT :: (Eq a, Num a) => a
pattern VK_COLOR_SPACE_BT709_NONLINEAR_EXT = 1000104006
#endif

#if VK_EXT_swapchain_colorspace
pattern VK_COLOR_SPACE_BT2020_LINEAR_EXT :: (Eq a, Num a) => a
pattern VK_COLOR_SPACE_BT2020_LINEAR_EXT = 1000104007
#endif

#if VK_EXT_swapchain_colorspace
pattern VK_COLOR_SPACE_HDR10_ST2084_EXT :: (Eq a, Num a) => a
pattern VK_COLOR_SPACE_HDR10_ST2084_EXT = 1000104008
#endif

#if VK_EXT_swapchain_colorspace
pattern VK_COLOR_SPACE_DOLBYVISION_EXT :: (Eq a, Num a) => a
pattern VK_COLOR_SPACE_DOLBYVISION_EXT = 1000104009
#endif

#if VK_EXT_swapchain_colorspace
pattern VK_COLOR_SPACE_HDR10_HLG_EXT :: (Eq a, Num a) => a
pattern VK_COLOR_SPACE_HDR10_HLG_EXT = 1000104010
#endif

#if VK_EXT_swapchain_colorspace
pattern VK_COLOR_SPACE_ADOBERGB_LINEAR_EXT :: (Eq a, Num a) => a
pattern VK_COLOR_SPACE_ADOBERGB_LINEAR_EXT = 1000104011
#endif

#if VK_EXT_swapchain_colorspace
pattern VK_COLOR_SPACE_ADOBERGB_NONLINEAR_EXT :: (Eq a, Num a) => a
pattern VK_COLOR_SPACE_ADOBERGB_NONLINEAR_EXT = 1000104012
#endif

#if VK_EXT_swapchain_colorspace
pattern VK_COLOR_SPACE_PASS_THROUGH_EXT :: (Eq a, Num a) => a
pattern VK_COLOR_SPACE_PASS_THROUGH_EXT = 1000104013
#endif

#if VK_EXT_swapchain_colorspace
pattern VK_COLOR_SPACE_EXTENDED_SRGB_NONLINEAR_EXT :: (Eq a, Num a) => a
pattern VK_COLOR_SPACE_EXTENDED_SRGB_NONLINEAR_EXT = 1000104014
#endif

#if VK_EXT_swapchain_colorspace
-- | Backwards-compatible alias containing a typo
pattern VK_COLOR_SPACE_DCI_P3_LINEAR_EXT :: (Eq a, Num a) => a
pattern VK_COLOR_SPACE_DCI_P3_LINEAR_EXT = VK_COLOR_SPACE_DISPLAY_P3_LINEAR_EXT
#endif

#if VK_AMD_display_native_hdr
pattern VK_COLOR_SPACE_DISPLAY_NATIVE_AMD :: (Eq a, Num a) => a
pattern VK_COLOR_SPACE_DISPLAY_NATIVE_AMD = 1000213000
#endif
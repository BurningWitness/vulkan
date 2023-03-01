{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_swapchain_colorspace

module Vulkan.Ext.VK_EXT_swapchain_colorspace
  ( pattern VK_EXT_SWAPCHAIN_COLOR_SPACE_SPEC_VERSION
  , pattern VK_EXT_SWAPCHAIN_COLOR_SPACE_EXTENSION_NAME
  , pattern VK_COLOR_SPACE_DISPLAY_P3_NONLINEAR_EXT
  , pattern VK_COLOR_SPACE_EXTENDED_SRGB_LINEAR_EXT
  , pattern VK_COLOR_SPACE_DISPLAY_P3_LINEAR_EXT
  , pattern VK_COLOR_SPACE_DCI_P3_NONLINEAR_EXT
  , pattern VK_COLOR_SPACE_BT709_LINEAR_EXT
  , pattern VK_COLOR_SPACE_BT709_NONLINEAR_EXT
  , pattern VK_COLOR_SPACE_BT2020_LINEAR_EXT
  , pattern VK_COLOR_SPACE_HDR10_ST2084_EXT
  , pattern VK_COLOR_SPACE_DOLBYVISION_EXT
  , pattern VK_COLOR_SPACE_HDR10_HLG_EXT
  , pattern VK_COLOR_SPACE_ADOBERGB_LINEAR_EXT
  , pattern VK_COLOR_SPACE_ADOBERGB_NONLINEAR_EXT
  , pattern VK_COLOR_SPACE_PASS_THROUGH_EXT
  , pattern VK_COLOR_SPACE_EXTENDED_SRGB_NONLINEAR_EXT
  , pattern VK_COLOR_SPACE_DCI_P3_LINEAR_EXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkColorSpaceKHR
import Vulkan.Types.VkFun



pattern VK_EXT_SWAPCHAIN_COLOR_SPACE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_SWAPCHAIN_COLOR_SPACE_SPEC_VERSION = 4

pattern VK_EXT_SWAPCHAIN_COLOR_SPACE_EXTENSION_NAME :: CString
pattern VK_EXT_SWAPCHAIN_COLOR_SPACE_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_SWAPCHAIN_COLOR_SPACE_EXTENSION_NAME = Ptr ("VK_EXT_swapchain_colorspace\0"##)

#else

module Vulkan.Ext.VK_EXT_swapchain_colorspace where

#endif
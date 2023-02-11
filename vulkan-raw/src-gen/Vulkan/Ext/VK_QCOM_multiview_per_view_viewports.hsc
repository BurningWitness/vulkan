{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_QCOM_multiview_per_view_viewports

module Vulkan.Ext.VK_QCOM_multiview_per_view_viewports
  ( pattern VK_QCOM_MULTIVIEW_PER_VIEW_VIEWPORTS_SPEC_VERSION
  , pattern VK_QCOM_MULTIVIEW_PER_VIEW_VIEWPORTS_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PER_VIEW_VIEWPORTS_FEATURES_QCOM
  , VkPhysicalDeviceMultiviewPerViewViewportsFeaturesQCOM (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceMultiviewPerViewViewportsFeaturesQCOM
import Vulkan.Types.VkFun



pattern VK_QCOM_MULTIVIEW_PER_VIEW_VIEWPORTS_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_QCOM_MULTIVIEW_PER_VIEW_VIEWPORTS_SPEC_VERSION = 1

pattern VK_QCOM_MULTIVIEW_PER_VIEW_VIEWPORTS_EXTENSION_NAME :: CString
pattern VK_QCOM_MULTIVIEW_PER_VIEW_VIEWPORTS_EXTENSION_NAME <- (const False -> True)
  where
    VK_QCOM_MULTIVIEW_PER_VIEW_VIEWPORTS_EXTENSION_NAME = Ptr ("VK_QCOM_multiview_per_view_viewports\0"##)

#else

module Vulkan.Ext.VK_QCOM_multiview_per_view_viewports where

#endif
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_multiview

module Vulkan.Ext.VK_KHR_multiview
  ( pattern VK_KHR_MULTIVIEW_SPEC_VERSION
  , pattern VK_KHR_MULTIVIEW_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_RENDER_PASS_MULTIVIEW_CREATE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_FEATURES_KHR
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PROPERTIES_KHR
  , pattern VK_DEPENDENCY_VIEW_LOCAL_BIT_KHR
  , VkRenderPassMultiviewCreateInfoKHR
  , VkPhysicalDeviceMultiviewFeaturesKHR
  , VkPhysicalDeviceMultiviewPropertiesKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkDependencyFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceMultiviewFeaturesKHR
import Vulkan.Types.Struct.VkPhysicalDeviceMultiviewPropertiesKHR
import Vulkan.Types.Struct.VkRenderPassMultiviewCreateInfoKHR
import Vulkan.Types.VkFun



pattern VK_KHR_MULTIVIEW_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_MULTIVIEW_SPEC_VERSION = 1

pattern VK_KHR_MULTIVIEW_EXTENSION_NAME :: CString
pattern VK_KHR_MULTIVIEW_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_MULTIVIEW_EXTENSION_NAME = Ptr ("VK_KHR_multiview\0"##)

#else

module Vulkan.Ext.VK_KHR_multiview where

#endif
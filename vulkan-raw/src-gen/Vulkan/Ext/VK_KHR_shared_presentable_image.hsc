{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_shared_presentable_image

module Vulkan.Ext.VK_KHR_shared_presentable_image
  ( pattern VK_KHR_SHARED_PRESENTABLE_IMAGE_SPEC_VERSION
  , pattern VK_KHR_SHARED_PRESENTABLE_IMAGE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_SHARED_PRESENT_SURFACE_CAPABILITIES_KHR
  , pattern VK_PRESENT_MODE_SHARED_DEMAND_REFRESH_KHR
  , pattern VK_PRESENT_MODE_SHARED_CONTINUOUS_REFRESH_KHR
  , pattern VK_IMAGE_LAYOUT_SHARED_PRESENT_KHR
  , VkSharedPresentSurfaceCapabilitiesKHR (..)
  , VkGetSwapchainStatusKHR
  , vkFunGetSwapchainStatusKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkPresentModeKHR
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkSharedPresentSurfaceCapabilitiesKHR
import Vulkan.Types.Command.VkGetSwapchainStatusKHR
import Vulkan.Types.VkFun



pattern VK_KHR_SHARED_PRESENTABLE_IMAGE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_SHARED_PRESENTABLE_IMAGE_SPEC_VERSION = 1

pattern VK_KHR_SHARED_PRESENTABLE_IMAGE_EXTENSION_NAME :: CString
pattern VK_KHR_SHARED_PRESENTABLE_IMAGE_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_SHARED_PRESENTABLE_IMAGE_EXTENSION_NAME = Ptr ("VK_KHR_shared_presentable_image\0"##)

#else

module Vulkan.Ext.VK_KHR_shared_presentable_image where

#endif
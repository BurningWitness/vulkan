{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_display_swapchain

module Vulkan.Ext.VK_KHR_display_swapchain
  ( pattern VK_KHR_DISPLAY_SWAPCHAIN_SPEC_VERSION
  , pattern VK_KHR_DISPLAY_SWAPCHAIN_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_DISPLAY_PRESENT_INFO_KHR
  , pattern VK_ERROR_INCOMPATIBLE_DISPLAY_KHR
  , VkDisplayPresentInfoKHR (..)
  , VkCreateSharedSwapchainsKHR
  , vkFunCreateSharedSwapchainsKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDisplayPresentInfoKHR
import Vulkan.Types.Command.VkCreateSharedSwapchainsKHR
import Vulkan.Types.VkFun



pattern VK_KHR_DISPLAY_SWAPCHAIN_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_DISPLAY_SWAPCHAIN_SPEC_VERSION = 10

pattern VK_KHR_DISPLAY_SWAPCHAIN_EXTENSION_NAME :: CString
pattern VK_KHR_DISPLAY_SWAPCHAIN_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_DISPLAY_SWAPCHAIN_EXTENSION_NAME = Ptr ("VK_KHR_display_swapchain\0"##)

#else

module Vulkan.Ext.VK_KHR_display_swapchain where

#endif
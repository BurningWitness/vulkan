{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_swapchain_mutable_format

module Vulkan.Ext.VK_KHR_swapchain_mutable_format
  ( pattern VK_KHR_SWAPCHAIN_MUTABLE_FORMAT_SPEC_VERSION
  , pattern VK_KHR_SWAPCHAIN_MUTABLE_FORMAT_EXTENSION_NAME
  , pattern VK_SWAPCHAIN_CREATE_MUTABLE_FORMAT_BIT_KHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkSwapchainCreateFlagBitsKHR
import Vulkan.Types.VkFun



pattern VK_KHR_SWAPCHAIN_MUTABLE_FORMAT_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_SWAPCHAIN_MUTABLE_FORMAT_SPEC_VERSION = 1

pattern VK_KHR_SWAPCHAIN_MUTABLE_FORMAT_EXTENSION_NAME :: CString
pattern VK_KHR_SWAPCHAIN_MUTABLE_FORMAT_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_SWAPCHAIN_MUTABLE_FORMAT_EXTENSION_NAME = Ptr ("VK_KHR_swapchain_mutable_format\0"##)

#else

module Vulkan.Ext.VK_KHR_swapchain_mutable_format where

#endif
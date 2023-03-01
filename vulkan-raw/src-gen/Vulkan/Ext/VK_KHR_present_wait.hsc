{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_present_wait

module Vulkan.Ext.VK_KHR_present_wait
  ( pattern VK_KHR_PRESENT_WAIT_SPEC_VERSION
  , pattern VK_KHR_PRESENT_WAIT_EXTENSION_NAME
  , VkWaitForPresentKHR
  , vkFunWaitForPresentKHR
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRESENT_WAIT_FEATURES_KHR
  , VkPhysicalDevicePresentWaitFeaturesKHR (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDevicePresentWaitFeaturesKHR
import Vulkan.Types.Command.VkWaitForPresentKHR
import Vulkan.Types.VkFun



pattern VK_KHR_PRESENT_WAIT_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_PRESENT_WAIT_SPEC_VERSION = 1

pattern VK_KHR_PRESENT_WAIT_EXTENSION_NAME :: CString
pattern VK_KHR_PRESENT_WAIT_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_PRESENT_WAIT_EXTENSION_NAME = Ptr ("VK_KHR_present_wait\0"##)

#else

module Vulkan.Ext.VK_KHR_present_wait where

#endif
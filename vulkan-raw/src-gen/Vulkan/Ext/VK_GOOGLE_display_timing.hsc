{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_GOOGLE_display_timing

module Vulkan.Ext.VK_GOOGLE_display_timing
  ( pattern VK_GOOGLE_DISPLAY_TIMING_SPEC_VERSION
  , pattern VK_GOOGLE_DISPLAY_TIMING_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PRESENT_TIMES_INFO_GOOGLE
  , VkRefreshCycleDurationGOOGLE (..)
  , VkPastPresentationTimingGOOGLE (..)
  , VkPresentTimesInfoGOOGLE (..)
  , VkPresentTimeGOOGLE (..)
  , VkGetRefreshCycleDurationGOOGLE
  , vkFunGetRefreshCycleDurationGOOGLE
  , VkGetPastPresentationTimingGOOGLE
  , vkFunGetPastPresentationTimingGOOGLE
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPastPresentationTimingGOOGLE
import Vulkan.Types.Struct.VkPresentTimeGOOGLE
import Vulkan.Types.Struct.VkPresentTimesInfoGOOGLE
import Vulkan.Types.Struct.VkRefreshCycleDurationGOOGLE
import Vulkan.Types.Command.VkGetPastPresentationTimingGOOGLE
import Vulkan.Types.Command.VkGetRefreshCycleDurationGOOGLE
import Vulkan.Types.VkFun



pattern VK_GOOGLE_DISPLAY_TIMING_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_GOOGLE_DISPLAY_TIMING_SPEC_VERSION = 1

pattern VK_GOOGLE_DISPLAY_TIMING_EXTENSION_NAME :: CString
pattern VK_GOOGLE_DISPLAY_TIMING_EXTENSION_NAME <- (const False -> True)
  where
    VK_GOOGLE_DISPLAY_TIMING_EXTENSION_NAME = Ptr ("VK_GOOGLE_display_timing\0"##)

#else

module Vulkan.Ext.VK_GOOGLE_display_timing where

#endif
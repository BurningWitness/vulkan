{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_maintenance1

module Vulkan.Ext.VK_KHR_maintenance1
  ( pattern VK_KHR_MAINTENANCE_1_SPEC_VERSION
  , pattern VK_KHR_MAINTENANCE_1_EXTENSION_NAME
  , pattern VK_KHR_MAINTENANCE1_SPEC_VERSION
  , pattern VK_KHR_MAINTENANCE1_EXTENSION_NAME
  , pattern VK_ERROR_OUT_OF_POOL_MEMORY_KHR
  , pattern VK_FORMAT_FEATURE_TRANSFER_SRC_BIT_KHR
  , pattern VK_FORMAT_FEATURE_TRANSFER_DST_BIT_KHR
  , pattern VK_IMAGE_CREATE_2D_ARRAY_COMPATIBLE_BIT_KHR
  , VkCommandPoolTrimFlagsKHR
  , VkTrimCommandPoolKHR
  , vkFunTrimCommandPoolKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkCommandPoolTrimFlagsKHR
import Vulkan.Types.Enum.VkFormatFeatureFlagBits
import Vulkan.Types.Enum.VkImageCreateFlagBits
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Command.VkTrimCommandPoolKHR
import Vulkan.Types.VkFun



pattern VK_KHR_MAINTENANCE_1_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_MAINTENANCE_1_SPEC_VERSION = 2

pattern VK_KHR_MAINTENANCE_1_EXTENSION_NAME :: CString
pattern VK_KHR_MAINTENANCE_1_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_MAINTENANCE_1_EXTENSION_NAME = Ptr ("VK_KHR_maintenance1\0"##)

-- | Backwards-compatible alias containing a typo
pattern VK_KHR_MAINTENANCE1_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_MAINTENANCE1_SPEC_VERSION = VK_KHR_MAINTENANCE_1_SPEC_VERSION

-- | Backwards-compatible alias containing a typo
pattern VK_KHR_MAINTENANCE1_EXTENSION_NAME :: CString
pattern VK_KHR_MAINTENANCE1_EXTENSION_NAME = VK_KHR_MAINTENANCE_1_EXTENSION_NAME

#else

module Vulkan.Ext.VK_KHR_maintenance1 where

#endif
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_calibrated_timestamps

module Vulkan.Ext.VK_EXT_calibrated_timestamps
  ( pattern VK_EXT_CALIBRATED_TIMESTAMPS_SPEC_VERSION
  , pattern VK_EXT_CALIBRATED_TIMESTAMPS_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_CALIBRATED_TIMESTAMP_INFO_EXT
  , VkTimeDomainEXT
  , pattern VK_TIME_DOMAIN_DEVICE_EXT
  , pattern VK_TIME_DOMAIN_CLOCK_MONOTONIC_EXT
  , pattern VK_TIME_DOMAIN_CLOCK_MONOTONIC_RAW_EXT
  , pattern VK_TIME_DOMAIN_QUERY_PERFORMANCE_COUNTER_EXT
  , VkCalibratedTimestampInfoEXT (..)
  , VkGetPhysicalDeviceCalibrateableTimeDomainsEXT
  , vkFunGetPhysicalDeviceCalibrateableTimeDomainsEXT
  , VkGetCalibratedTimestampsEXT
  , vkFunGetCalibratedTimestampsEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkTimeDomainEXT
import Vulkan.Types.Struct.VkCalibratedTimestampInfoEXT
import Vulkan.Types.Command.VkGetCalibratedTimestampsEXT
import Vulkan.Types.Command.VkGetPhysicalDeviceCalibrateableTimeDomainsEXT
import Vulkan.Types.VkFun



pattern VK_EXT_CALIBRATED_TIMESTAMPS_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_CALIBRATED_TIMESTAMPS_SPEC_VERSION = 2

pattern VK_EXT_CALIBRATED_TIMESTAMPS_EXTENSION_NAME :: CString
pattern VK_EXT_CALIBRATED_TIMESTAMPS_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_CALIBRATED_TIMESTAMPS_EXTENSION_NAME = Ptr ("VK_EXT_calibrated_timestamps\0"##)

#else

module Vulkan.Ext.VK_EXT_calibrated_timestamps where

#endif
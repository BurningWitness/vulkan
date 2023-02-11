{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_calibrated_timestamps

module Vulkan.Types.Command.VkGetCalibratedTimestampsEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkCalibratedTimestampInfoEXT
import Vulkan.Types.VkFun



type VkGetCalibratedTimestampsEXT =
          VkDevice -- ^ device
       -> #{type uint32_t} -- ^ timestampCount
       -> Ptr VkCalibratedTimestampInfoEXT -- ^ pTimestampInfos
       -> Ptr #{type uint64_t} -- ^ pTimestamps
       -> Ptr #{type uint64_t} -- ^ pMaxDeviation
       -> IO VkResult

vkFunGetCalibratedTimestampsEXT :: VkFun VkGetCalibratedTimestampsEXT
vkFunGetCalibratedTimestampsEXT = VkFun (Ptr ("vkGetCalibratedTimestampsEXT\0"##))

#else

module Vulkan.Types.Command.VkGetCalibratedTimestampsEXT where

#endif
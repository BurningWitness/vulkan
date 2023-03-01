{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_display

module Vulkan.Types.Command.VkGetDisplayPlaneSupportedDisplaysKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetDisplayPlaneSupportedDisplaysKHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> #{type uint32_t} -- ^ planeIndex
       -> Ptr #{type uint32_t} -- ^ pDisplayCount
       -> Ptr VkDisplayKHR -- ^ pDisplays
       -> IO VkResult

vkFunGetDisplayPlaneSupportedDisplaysKHR :: VkFun VkGetDisplayPlaneSupportedDisplaysKHR
vkFunGetDisplayPlaneSupportedDisplaysKHR = VkFun (Ptr ("vkGetDisplayPlaneSupportedDisplaysKHR\0"##))

#else

module Vulkan.Types.Command.VkGetDisplayPlaneSupportedDisplaysKHR where

#endif
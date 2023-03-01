{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_GOOGLE_display_timing

module Vulkan.Types.Command.VkGetRefreshCycleDurationGOOGLE where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkRefreshCycleDurationGOOGLE
import Vulkan.Types.VkFun



type VkGetRefreshCycleDurationGOOGLE =
          VkDevice -- ^ device
       -> VkSwapchainKHR -- ^ swapchain
       -> Ptr VkRefreshCycleDurationGOOGLE -- ^ pDisplayTimingProperties
       -> IO VkResult

vkFunGetRefreshCycleDurationGOOGLE :: VkFun VkGetRefreshCycleDurationGOOGLE
vkFunGetRefreshCycleDurationGOOGLE = VkFun (Ptr ("vkGetRefreshCycleDurationGOOGLE\0"##))

#else

module Vulkan.Types.Command.VkGetRefreshCycleDurationGOOGLE where

#endif
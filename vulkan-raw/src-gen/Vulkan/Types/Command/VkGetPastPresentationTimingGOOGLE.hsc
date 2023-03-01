{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_GOOGLE_display_timing

module Vulkan.Types.Command.VkGetPastPresentationTimingGOOGLE where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPastPresentationTimingGOOGLE
import Vulkan.Types.VkFun



type VkGetPastPresentationTimingGOOGLE =
          VkDevice -- ^ device
       -> VkSwapchainKHR -- ^ swapchain
       -> Ptr #{type uint32_t} -- ^ pPresentationTimingCount
       -> Ptr VkPastPresentationTimingGOOGLE -- ^ pPresentationTimings
       -> IO VkResult

vkFunGetPastPresentationTimingGOOGLE :: VkFun VkGetPastPresentationTimingGOOGLE
vkFunGetPastPresentationTimingGOOGLE = VkFun (Ptr ("vkGetPastPresentationTimingGOOGLE\0"##))

#else

module Vulkan.Types.Command.VkGetPastPresentationTimingGOOGLE where

#endif
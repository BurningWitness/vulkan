{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_acquire_winrt_display

module Vulkan.Types.Command.VkGetWinrtDisplayNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetWinrtDisplayNV =
          VkPhysicalDevice -- ^ physicalDevice
       -> #{type uint32_t} -- ^ deviceRelativeId
       -> Ptr VkDisplayKHR -- ^ pDisplay
       -> IO VkResult

vkFunGetWinrtDisplayNV :: VkFun VkGetWinrtDisplayNV
vkFunGetWinrtDisplayNV = VkFun (Ptr ("vkGetWinrtDisplayNV\0"##))

#else

module Vulkan.Types.Command.VkGetWinrtDisplayNV where

#endif
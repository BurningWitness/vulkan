{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_acquire_winrt_display

module Vulkan.Types.Command.VkAcquireWinrtDisplayNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkAcquireWinrtDisplayNV =
          VkPhysicalDevice -- ^ physicalDevice
       -> VkDisplayKHR -- ^ display
       -> IO VkResult

vkFunAcquireWinrtDisplayNV :: VkFun VkAcquireWinrtDisplayNV
vkFunAcquireWinrtDisplayNV = VkFun (Ptr ("vkAcquireWinrtDisplayNV\0"##))

#else

module Vulkan.Types.Command.VkAcquireWinrtDisplayNV where

#endif
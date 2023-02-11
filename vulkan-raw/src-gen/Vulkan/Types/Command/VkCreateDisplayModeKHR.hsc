{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_display

module Vulkan.Types.Command.VkCreateDisplayModeKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkDisplayModeCreateInfoKHR
import Vulkan.Types.VkFun



type VkCreateDisplayModeKHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> VkDisplayKHR -- ^ display
       -> Ptr VkDisplayModeCreateInfoKHR -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkDisplayModeKHR -- ^ pMode
       -> IO VkResult

vkFunCreateDisplayModeKHR :: VkFun VkCreateDisplayModeKHR
vkFunCreateDisplayModeKHR = VkFun (Ptr ("vkCreateDisplayModeKHR\0"##))

#else

module Vulkan.Types.Command.VkCreateDisplayModeKHR where

#endif
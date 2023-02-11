{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_queue

module Vulkan.Types.Command.VkGetPhysicalDeviceVideoCapabilitiesKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkVideoCapabilitiesKHR
import Vulkan.Types.Struct.VkVideoProfileInfoKHR
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceVideoCapabilitiesKHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr VkVideoProfileInfoKHR -- ^ pVideoProfile
       -> Ptr VkVideoCapabilitiesKHR -- ^ pCapabilities
       -> IO VkResult

vkFunGetPhysicalDeviceVideoCapabilitiesKHR :: VkFun VkGetPhysicalDeviceVideoCapabilitiesKHR
vkFunGetPhysicalDeviceVideoCapabilitiesKHR = VkFun (Ptr ("vkGetPhysicalDeviceVideoCapabilitiesKHR\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceVideoCapabilitiesKHR where

#endif
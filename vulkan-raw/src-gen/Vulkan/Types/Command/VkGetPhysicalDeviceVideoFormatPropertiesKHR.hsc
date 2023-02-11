{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_queue

module Vulkan.Types.Command.VkGetPhysicalDeviceVideoFormatPropertiesKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPhysicalDeviceVideoFormatInfoKHR
import Vulkan.Types.Struct.VkVideoFormatPropertiesKHR
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceVideoFormatPropertiesKHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr VkPhysicalDeviceVideoFormatInfoKHR -- ^ pVideoFormatInfo
       -> Ptr #{type uint32_t} -- ^ pVideoFormatPropertyCount
       -> Ptr VkVideoFormatPropertiesKHR -- ^ pVideoFormatProperties
       -> IO VkResult

vkFunGetPhysicalDeviceVideoFormatPropertiesKHR :: VkFun VkGetPhysicalDeviceVideoFormatPropertiesKHR
vkFunGetPhysicalDeviceVideoFormatPropertiesKHR = VkFun (Ptr ("vkGetPhysicalDeviceVideoFormatPropertiesKHR\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceVideoFormatPropertiesKHR where

#endif
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_optical_flow

module Vulkan.Types.Command.VkGetPhysicalDeviceOpticalFlowImageFormatsNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkOpticalFlowImageFormatInfoNV
import Vulkan.Types.Struct.VkOpticalFlowImageFormatPropertiesNV
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceOpticalFlowImageFormatsNV =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr VkOpticalFlowImageFormatInfoNV -- ^ pOpticalFlowImageFormatInfo
       -> Ptr #{type uint32_t} -- ^ pFormatCount
       -> Ptr VkOpticalFlowImageFormatPropertiesNV -- ^ pImageFormatProperties
       -> IO VkResult

vkFunGetPhysicalDeviceOpticalFlowImageFormatsNV :: VkFun VkGetPhysicalDeviceOpticalFlowImageFormatsNV
vkFunGetPhysicalDeviceOpticalFlowImageFormatsNV = VkFun (Ptr ("vkGetPhysicalDeviceOpticalFlowImageFormatsNV\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceOpticalFlowImageFormatsNV where

#endif
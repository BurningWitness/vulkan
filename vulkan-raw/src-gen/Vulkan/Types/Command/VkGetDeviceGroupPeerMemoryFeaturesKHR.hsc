{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_device_group

module Vulkan.Types.Command.VkGetDeviceGroupPeerMemoryFeaturesKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkPeerMemoryFeatureFlags
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetDeviceGroupPeerMemoryFeaturesKHR =
          VkDevice -- ^ device
       -> #{type uint32_t} -- ^ heapIndex
       -> #{type uint32_t} -- ^ localDeviceIndex
       -> #{type uint32_t} -- ^ remoteDeviceIndex
       -> Ptr VkPeerMemoryFeatureFlags -- ^ pPeerMemoryFeatures
       -> IO ()

vkFunGetDeviceGroupPeerMemoryFeaturesKHR :: VkFun VkGetDeviceGroupPeerMemoryFeaturesKHR
vkFunGetDeviceGroupPeerMemoryFeaturesKHR = VkFun (Ptr ("vkGetDeviceGroupPeerMemoryFeaturesKHR\0"##))

#else

module Vulkan.Types.Command.VkGetDeviceGroupPeerMemoryFeaturesKHR where

#endif
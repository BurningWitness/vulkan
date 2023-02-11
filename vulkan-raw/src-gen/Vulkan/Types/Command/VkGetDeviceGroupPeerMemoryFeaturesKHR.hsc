#include <vulkan/vulkan.h>

#if VK_KHR_device_group

module Vulkan.Types.Command.VkGetDeviceGroupPeerMemoryFeaturesKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkPeerMemoryFeatureFlags
import Vulkan.Types.Handle
import Vulkan.Types.Command.VkGetDeviceGroupPeerMemoryFeatures
import Vulkan.Types.VkFun



type VkGetDeviceGroupPeerMemoryFeaturesKHR = VkGetDeviceGroupPeerMemoryFeatures

vkFunGetDeviceGroupPeerMemoryFeaturesKHR
  :: VkFun VkGetDeviceGroupPeerMemoryFeaturesKHR
vkFunGetDeviceGroupPeerMemoryFeaturesKHR = vkFunGetDeviceGroupPeerMemoryFeatures


#else

module Vulkan.Types.Command.VkGetDeviceGroupPeerMemoryFeaturesKHR where

#endif
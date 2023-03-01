{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_fragment_shading_rate

module Vulkan.Types.Command.VkGetPhysicalDeviceFragmentShadingRatesKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPhysicalDeviceFragmentShadingRateKHR
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceFragmentShadingRatesKHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr #{type uint32_t} -- ^ pFragmentShadingRateCount
       -> Ptr VkPhysicalDeviceFragmentShadingRateKHR -- ^ pFragmentShadingRates
       -> IO VkResult

vkFunGetPhysicalDeviceFragmentShadingRatesKHR :: VkFun VkGetPhysicalDeviceFragmentShadingRatesKHR
vkFunGetPhysicalDeviceFragmentShadingRatesKHR = VkFun (Ptr ("vkGetPhysicalDeviceFragmentShadingRatesKHR\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceFragmentShadingRatesKHR where

#endif
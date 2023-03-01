{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_coverage_reduction_mode

module Vulkan.Types.Command.VkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkFramebufferMixedSamplesCombinationNV
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr #{type uint32_t} -- ^ pCombinationCount
       -> Ptr VkFramebufferMixedSamplesCombinationNV -- ^ pCombinations
       -> IO VkResult

vkFunGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV :: VkFun VkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV
vkFunGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV = VkFun (Ptr ("vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV where

#endif
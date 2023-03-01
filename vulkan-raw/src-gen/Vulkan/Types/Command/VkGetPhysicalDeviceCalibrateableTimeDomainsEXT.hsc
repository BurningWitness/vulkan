{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_calibrated_timestamps

module Vulkan.Types.Command.VkGetPhysicalDeviceCalibrateableTimeDomainsEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Enum.VkTimeDomainEXT
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceCalibrateableTimeDomainsEXT =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr #{type uint32_t} -- ^ pTimeDomainCount
       -> Ptr VkTimeDomainEXT -- ^ pTimeDomains
       -> IO VkResult

vkFunGetPhysicalDeviceCalibrateableTimeDomainsEXT :: VkFun VkGetPhysicalDeviceCalibrateableTimeDomainsEXT
vkFunGetPhysicalDeviceCalibrateableTimeDomainsEXT = VkFun (Ptr ("vkGetPhysicalDeviceCalibrateableTimeDomainsEXT\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceCalibrateableTimeDomainsEXT where

#endif
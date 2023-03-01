{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_timeline_semaphore

module Vulkan.Ext.VK_KHR_timeline_semaphore
  ( pattern VK_KHR_TIMELINE_SEMAPHORE_SPEC_VERSION
  , pattern VK_KHR_TIMELINE_SEMAPHORE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_FEATURES_KHR
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_PROPERTIES_KHR
  , pattern VK_STRUCTURE_TYPE_SEMAPHORE_TYPE_CREATE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_TIMELINE_SEMAPHORE_SUBMIT_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_SEMAPHORE_WAIT_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_SEMAPHORE_SIGNAL_INFO_KHR
  , pattern VK_SEMAPHORE_TYPE_BINARY_KHR
  , pattern VK_SEMAPHORE_TYPE_TIMELINE_KHR
  , pattern VK_SEMAPHORE_WAIT_ANY_BIT_KHR
  , VkSemaphoreTypeKHR
  , VkPhysicalDeviceTimelineSemaphoreFeaturesKHR
  , VkPhysicalDeviceTimelineSemaphorePropertiesKHR
  , VkSemaphoreTypeCreateInfoKHR
  , VkTimelineSemaphoreSubmitInfoKHR
  , VkSemaphoreWaitFlagBitsKHR
  , VkSemaphoreWaitFlagsKHR
  , VkSemaphoreWaitInfoKHR
  , VkSemaphoreSignalInfoKHR
  , VkGetSemaphoreCounterValueKHR
  , vkFunGetSemaphoreCounterValueKHR
  , VkWaitSemaphoresKHR
  , vkFunWaitSemaphoresKHR
  , VkSignalSemaphoreKHR
  , vkFunSignalSemaphoreKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkSemaphoreType
import Vulkan.Types.Enum.VkSemaphoreTypeKHR
import Vulkan.Types.Enum.VkSemaphoreWaitFlagBits
import Vulkan.Types.Enum.VkSemaphoreWaitFlagBitsKHR
import Vulkan.Types.Enum.VkSemaphoreWaitFlagsKHR
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceTimelineSemaphoreFeaturesKHR
import Vulkan.Types.Struct.VkPhysicalDeviceTimelineSemaphorePropertiesKHR
import Vulkan.Types.Struct.VkSemaphoreSignalInfoKHR
import Vulkan.Types.Struct.VkSemaphoreTypeCreateInfoKHR
import Vulkan.Types.Struct.VkSemaphoreWaitInfoKHR
import Vulkan.Types.Struct.VkTimelineSemaphoreSubmitInfoKHR
import Vulkan.Types.Command.VkGetSemaphoreCounterValueKHR
import Vulkan.Types.Command.VkSignalSemaphoreKHR
import Vulkan.Types.Command.VkWaitSemaphoresKHR
import Vulkan.Types.VkFun



pattern VK_KHR_TIMELINE_SEMAPHORE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_TIMELINE_SEMAPHORE_SPEC_VERSION = 2

pattern VK_KHR_TIMELINE_SEMAPHORE_EXTENSION_NAME :: CString
pattern VK_KHR_TIMELINE_SEMAPHORE_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_TIMELINE_SEMAPHORE_EXTENSION_NAME = Ptr ("VK_KHR_timeline_semaphore\0"##)

#else

module Vulkan.Ext.VK_KHR_timeline_semaphore where

#endif
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_display_control

module Vulkan.Ext.VK_EXT_display_control
  ( pattern VK_EXT_DISPLAY_CONTROL_SPEC_VERSION
  , pattern VK_EXT_DISPLAY_CONTROL_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_DISPLAY_POWER_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_DEVICE_EVENT_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_DISPLAY_EVENT_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_SWAPCHAIN_COUNTER_CREATE_INFO_EXT
  , VkDisplayPowerStateEXT
  , pattern VK_DISPLAY_POWER_STATE_OFF_EXT
  , pattern VK_DISPLAY_POWER_STATE_SUSPEND_EXT
  , pattern VK_DISPLAY_POWER_STATE_ON_EXT
  , VkDeviceEventTypeEXT
  , pattern VK_DEVICE_EVENT_TYPE_DISPLAY_HOTPLUG_EXT
  , VkDisplayEventTypeEXT
  , pattern VK_DISPLAY_EVENT_TYPE_FIRST_PIXEL_OUT_EXT
  , VkDisplayPowerInfoEXT (..)
  , VkDeviceEventInfoEXT (..)
  , VkDisplayEventInfoEXT (..)
  , VkSwapchainCounterCreateInfoEXT (..)
  , VkDisplayPowerControlEXT
  , vkFunDisplayPowerControlEXT
  , VkRegisterDeviceEventEXT
  , vkFunRegisterDeviceEventEXT
  , VkRegisterDisplayEventEXT
  , vkFunRegisterDisplayEventEXT
  , VkGetSwapchainCounterEXT
  , vkFunGetSwapchainCounterEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkDeviceEventTypeEXT
import Vulkan.Types.Enum.VkDisplayEventTypeEXT
import Vulkan.Types.Enum.VkDisplayPowerStateEXT
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDeviceEventInfoEXT
import Vulkan.Types.Struct.VkDisplayEventInfoEXT
import Vulkan.Types.Struct.VkDisplayPowerInfoEXT
import Vulkan.Types.Struct.VkSwapchainCounterCreateInfoEXT
import Vulkan.Types.Command.VkDisplayPowerControlEXT
import Vulkan.Types.Command.VkGetSwapchainCounterEXT
import Vulkan.Types.Command.VkRegisterDeviceEventEXT
import Vulkan.Types.Command.VkRegisterDisplayEventEXT
import Vulkan.Types.VkFun



pattern VK_EXT_DISPLAY_CONTROL_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_DISPLAY_CONTROL_SPEC_VERSION = 1

pattern VK_EXT_DISPLAY_CONTROL_EXTENSION_NAME :: CString
pattern VK_EXT_DISPLAY_CONTROL_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_DISPLAY_CONTROL_EXTENSION_NAME = Ptr ("VK_EXT_display_control\0"##)

#else

module Vulkan.Ext.VK_EXT_display_control where

#endif
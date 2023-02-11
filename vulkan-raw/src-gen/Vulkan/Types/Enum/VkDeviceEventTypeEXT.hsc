{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDeviceEventTypeEXT where

import Data.Int



#if VK_EXT_display_control
type VkDeviceEventTypeEXT = #{type int}
#endif

#if VK_EXT_display_control
pattern VK_DEVICE_EVENT_TYPE_DISPLAY_HOTPLUG_EXT :: (Eq a, Num a) => a
pattern VK_DEVICE_EVENT_TYPE_DISPLAY_HOTPLUG_EXT = 0
#endif
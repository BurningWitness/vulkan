{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDisplayPowerStateEXT where

import Data.Int



#if VK_EXT_display_control
type VkDisplayPowerStateEXT = #{type int}
#endif

#if VK_EXT_display_control
pattern VK_DISPLAY_POWER_STATE_OFF_EXT :: (Eq a, Num a) => a
pattern VK_DISPLAY_POWER_STATE_OFF_EXT = 0
#endif

#if VK_EXT_display_control
pattern VK_DISPLAY_POWER_STATE_SUSPEND_EXT :: (Eq a, Num a) => a
pattern VK_DISPLAY_POWER_STATE_SUSPEND_EXT = 1
#endif

#if VK_EXT_display_control
pattern VK_DISPLAY_POWER_STATE_ON_EXT :: (Eq a, Num a) => a
pattern VK_DISPLAY_POWER_STATE_ON_EXT = 2
#endif
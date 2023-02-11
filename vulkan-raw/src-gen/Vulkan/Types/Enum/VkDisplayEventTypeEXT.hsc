{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDisplayEventTypeEXT where

import Data.Int



#if VK_EXT_display_control
type VkDisplayEventTypeEXT = #{type int}
#endif

#if VK_EXT_display_control
pattern VK_DISPLAY_EVENT_TYPE_FIRST_PIXEL_OUT_EXT :: (Eq a, Num a) => a
pattern VK_DISPLAY_EVENT_TYPE_FIRST_PIXEL_OUT_EXT = 0
#endif
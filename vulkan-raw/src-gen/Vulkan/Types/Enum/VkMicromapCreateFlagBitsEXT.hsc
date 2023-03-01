{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkMicromapCreateFlagBitsEXT where

import Vulkan.Types.Base



#if VK_EXT_opacity_micromap
type VkMicromapCreateFlagBitsEXT = VkFlags
#endif

#if VK_EXT_opacity_micromap
pattern VK_MICROMAP_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_EXT :: (Eq a, Num a) => a
pattern VK_MICROMAP_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_EXT = 1
#endif
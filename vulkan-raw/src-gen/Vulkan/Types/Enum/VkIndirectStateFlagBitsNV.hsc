{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkIndirectStateFlagBitsNV where

import Vulkan.Types.Base



#if VK_NV_device_generated_commands
type VkIndirectStateFlagBitsNV = VkFlags
#endif

#if VK_NV_device_generated_commands
pattern VK_INDIRECT_STATE_FLAG_FRONTFACE_BIT_NV :: (Eq a, Num a) => a
pattern VK_INDIRECT_STATE_FLAG_FRONTFACE_BIT_NV = 1
#endif
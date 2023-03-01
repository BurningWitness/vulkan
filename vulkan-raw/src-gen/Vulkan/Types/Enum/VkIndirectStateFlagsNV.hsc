{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkIndirectStateFlagsNV where

import Vulkan.Types.Base



#if VK_NV_device_generated_commands
type VkIndirectStateFlagsNV = VkFlags
#endif
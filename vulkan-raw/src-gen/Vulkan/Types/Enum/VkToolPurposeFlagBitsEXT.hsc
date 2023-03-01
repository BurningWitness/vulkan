{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkToolPurposeFlagBitsEXT where

import Vulkan.Types.Base



#if VK_EXT_tooling_info
type VkToolPurposeFlagBitsEXT = VkFlags
#endif
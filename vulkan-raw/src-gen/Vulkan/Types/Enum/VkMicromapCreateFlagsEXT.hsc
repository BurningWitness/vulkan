{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkMicromapCreateFlagsEXT where

import Vulkan.Types.Base



#if VK_EXT_opacity_micromap
type VkMicromapCreateFlagsEXT = VkFlags
#endif
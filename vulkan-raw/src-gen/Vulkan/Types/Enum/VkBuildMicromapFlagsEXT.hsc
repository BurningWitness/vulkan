{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkBuildMicromapFlagsEXT where

import Vulkan.Types.Base



#if VK_EXT_opacity_micromap
type VkBuildMicromapFlagsEXT = VkFlags
#endif
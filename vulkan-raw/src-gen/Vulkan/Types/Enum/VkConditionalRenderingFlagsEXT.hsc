{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkConditionalRenderingFlagsEXT where

import Vulkan.Types.Base



#if VK_EXT_conditional_rendering
type VkConditionalRenderingFlagsEXT = VkFlags
#endif
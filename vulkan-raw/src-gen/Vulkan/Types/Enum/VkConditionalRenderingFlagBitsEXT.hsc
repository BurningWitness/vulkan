{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkConditionalRenderingFlagBitsEXT where

import Vulkan.Types.Base



#if VK_EXT_conditional_rendering
type VkConditionalRenderingFlagBitsEXT = VkFlags
#endif

#if VK_EXT_conditional_rendering
pattern VK_CONDITIONAL_RENDERING_INVERTED_BIT_EXT :: (Eq a, Num a) => a
pattern VK_CONDITIONAL_RENDERING_INVERTED_BIT_EXT = 1
#endif
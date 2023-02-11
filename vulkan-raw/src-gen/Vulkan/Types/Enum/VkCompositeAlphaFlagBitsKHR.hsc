{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkCompositeAlphaFlagBitsKHR where

import Vulkan.Types.Base



#if VK_KHR_surface
type VkCompositeAlphaFlagBitsKHR = VkFlags
#endif

#if VK_KHR_surface
pattern VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR = 1
#endif

#if VK_KHR_surface
pattern VK_COMPOSITE_ALPHA_PRE_MULTIPLIED_BIT_KHR :: (Eq a, Num a) => a
pattern VK_COMPOSITE_ALPHA_PRE_MULTIPLIED_BIT_KHR = 2
#endif

#if VK_KHR_surface
pattern VK_COMPOSITE_ALPHA_POST_MULTIPLIED_BIT_KHR :: (Eq a, Num a) => a
pattern VK_COMPOSITE_ALPHA_POST_MULTIPLIED_BIT_KHR = 4
#endif

#if VK_KHR_surface
pattern VK_COMPOSITE_ALPHA_INHERIT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_COMPOSITE_ALPHA_INHERIT_BIT_KHR = 8
#endif
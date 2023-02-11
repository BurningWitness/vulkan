{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkFramebufferCreateFlagBits where

import Vulkan.Types.Base



type VkFramebufferCreateFlagBits = VkFlags

#if VK_VERSION_1_2 || (VK_KHR_imageless_framebuffer)
pattern VK_FRAMEBUFFER_CREATE_IMAGELESS_BIT :: (Eq a, Num a) => a
pattern VK_FRAMEBUFFER_CREATE_IMAGELESS_BIT = 1
#endif

#if VK_KHR_imageless_framebuffer
pattern VK_FRAMEBUFFER_CREATE_IMAGELESS_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FRAMEBUFFER_CREATE_IMAGELESS_BIT_KHR = VK_FRAMEBUFFER_CREATE_IMAGELESS_BIT
#endif
{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkRenderingFlagBits where

import Vulkan.Types.Base



#if VK_VERSION_1_3
type VkRenderingFlagBits = VkFlags
#endif

#if VK_VERSION_1_3
pattern VK_RENDERING_CONTENTS_SECONDARY_COMMAND_BUFFERS_BIT :: (Eq a, Num a) => a
pattern VK_RENDERING_CONTENTS_SECONDARY_COMMAND_BUFFERS_BIT = 1
#endif

#if VK_VERSION_1_3
pattern VK_RENDERING_CONTENTS_SECONDARY_COMMAND_BUFFERS_BIT_KHR :: (Eq a, Num a) => a
pattern VK_RENDERING_CONTENTS_SECONDARY_COMMAND_BUFFERS_BIT_KHR = 1
#endif

#if VK_VERSION_1_3
pattern VK_RENDERING_SUSPENDING_BIT :: (Eq a, Num a) => a
pattern VK_RENDERING_SUSPENDING_BIT = 2
#endif

#if VK_VERSION_1_3
pattern VK_RENDERING_SUSPENDING_BIT_KHR :: (Eq a, Num a) => a
pattern VK_RENDERING_SUSPENDING_BIT_KHR = 2
#endif

#if VK_VERSION_1_3
pattern VK_RENDERING_RESUMING_BIT :: (Eq a, Num a) => a
pattern VK_RENDERING_RESUMING_BIT = 4
#endif

#if VK_VERSION_1_3
pattern VK_RENDERING_RESUMING_BIT_KHR :: (Eq a, Num a) => a
pattern VK_RENDERING_RESUMING_BIT_KHR = 4
#endif

#if VK_EXT_legacy_dithering && VK_KHR_dynamic_rendering
pattern VK_RENDERING_ENABLE_LEGACY_DITHERING_BIT_EXT :: (Eq a, Num a) => a
pattern VK_RENDERING_ENABLE_LEGACY_DITHERING_BIT_EXT = 8
#endif
{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkImageConstraintsInfoFlagsFUCHSIA where

import Vulkan.Types.Base



#if VK_FUCHSIA_buffer_collection
type VkImageConstraintsInfoFlagsFUCHSIA = VkFlags
#endif
{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkAccessFlags2 where

import Vulkan.Types.Base



#if VK_VERSION_1_3
type VkAccessFlags2 = VkFlags64
#endif
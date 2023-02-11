{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkToolPurposeFlags where

import Vulkan.Types.Base



#if VK_VERSION_1_3
type VkToolPurposeFlags = VkFlags
#endif
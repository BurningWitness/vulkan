{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDescriptorBindingFlags where

import Vulkan.Types.Base



#if VK_VERSION_1_2
type VkDescriptorBindingFlags = VkFlags
#endif
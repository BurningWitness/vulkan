{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDescriptorBindingFlagsEXT where

import Vulkan.Types.Base



#if VK_EXT_descriptor_indexing
type VkDescriptorBindingFlagsEXT = VkFlags
#endif
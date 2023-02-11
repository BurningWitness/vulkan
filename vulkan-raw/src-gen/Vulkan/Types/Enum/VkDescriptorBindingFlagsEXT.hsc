{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDescriptorBindingFlagsEXT where

import Data.Int
import Vulkan.Types.Enum.VkDescriptorBindingFlags



#if VK_EXT_descriptor_indexing
type VkDescriptorBindingFlagsEXT = VkDescriptorBindingFlags
#endif
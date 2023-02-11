{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDescriptorBindingFlagBitsEXT where

import Data.Int
import Vulkan.Types.Enum.VkDescriptorBindingFlagBits



#if VK_EXT_descriptor_indexing
type VkDescriptorBindingFlagBitsEXT = VkDescriptorBindingFlagBits
#endif
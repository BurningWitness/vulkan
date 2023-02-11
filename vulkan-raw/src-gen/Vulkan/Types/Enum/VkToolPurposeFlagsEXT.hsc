{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkToolPurposeFlagsEXT where

import Data.Int
import Vulkan.Types.Enum.VkToolPurposeFlags



#if VK_EXT_tooling_info
type VkToolPurposeFlagsEXT = VkToolPurposeFlags
#endif
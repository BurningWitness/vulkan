{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPrivateDataSlotCreateFlagsEXT where

import Data.Int
import Vulkan.Types.Enum.VkPrivateDataSlotCreateFlags



#if VK_EXT_private_data
type VkPrivateDataSlotCreateFlagsEXT = VkPrivateDataSlotCreateFlags
#endif
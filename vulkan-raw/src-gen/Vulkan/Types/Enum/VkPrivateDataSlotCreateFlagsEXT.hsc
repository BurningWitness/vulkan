{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPrivateDataSlotCreateFlagsEXT where

import Vulkan.Types.Base



#if VK_EXT_private_data
type VkPrivateDataSlotCreateFlagsEXT = VkFlags
#endif
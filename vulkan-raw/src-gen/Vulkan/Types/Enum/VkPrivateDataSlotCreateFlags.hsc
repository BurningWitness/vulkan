{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPrivateDataSlotCreateFlags where

import Vulkan.Types.Base



#if VK_VERSION_1_3
type VkPrivateDataSlotCreateFlags = VkFlags
#endif
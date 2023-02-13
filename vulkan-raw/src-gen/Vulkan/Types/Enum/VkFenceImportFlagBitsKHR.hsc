{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkFenceImportFlagBitsKHR where

import Vulkan.Types.Base



#if VK_KHR_external_fence
type VkFenceImportFlagBitsKHR = VkFlags
#endif
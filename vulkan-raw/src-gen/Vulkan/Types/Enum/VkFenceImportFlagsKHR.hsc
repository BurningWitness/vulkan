{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkFenceImportFlagsKHR where

import Vulkan.Types.Base



#if VK_KHR_external_fence
type VkFenceImportFlagsKHR = VkFlags
#endif
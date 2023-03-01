{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPipelineStageFlags2KHR where

import Vulkan.Types.Base



#if VK_KHR_synchronization2
type VkPipelineStageFlags2KHR = VkFlags64
#endif
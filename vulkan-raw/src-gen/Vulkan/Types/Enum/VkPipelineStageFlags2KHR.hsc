{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPipelineStageFlags2KHR where

import Data.Int
import Vulkan.Types.Enum.VkPipelineStageFlags2



#if VK_KHR_synchronization2
type VkPipelineStageFlags2KHR = VkPipelineStageFlags2
#endif
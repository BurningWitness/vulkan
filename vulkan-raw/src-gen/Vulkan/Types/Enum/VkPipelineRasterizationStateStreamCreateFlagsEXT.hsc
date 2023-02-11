{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPipelineRasterizationStateStreamCreateFlagsEXT where

import Vulkan.Types.Base



#if VK_EXT_transform_feedback
type VkPipelineRasterizationStateStreamCreateFlagsEXT = VkFlags
#endif
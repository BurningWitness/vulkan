{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPipelineCreationFeedbackFlagsEXT where

import Vulkan.Types.Base



#if VK_EXT_pipeline_creation_feedback
type VkPipelineCreationFeedbackFlagsEXT = VkFlags
#endif
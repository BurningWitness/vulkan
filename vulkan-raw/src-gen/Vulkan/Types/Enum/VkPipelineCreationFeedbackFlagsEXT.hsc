{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPipelineCreationFeedbackFlagsEXT where

import Data.Int
import Vulkan.Types.Enum.VkPipelineCreationFeedbackFlags



#if VK_EXT_pipeline_creation_feedback
type VkPipelineCreationFeedbackFlagsEXT = VkPipelineCreationFeedbackFlags
#endif
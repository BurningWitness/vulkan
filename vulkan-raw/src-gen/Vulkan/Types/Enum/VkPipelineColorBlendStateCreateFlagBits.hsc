{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPipelineColorBlendStateCreateFlagBits where

import Vulkan.Types.Base



#if VK_EXT_rasterization_order_attachment_access
type VkPipelineColorBlendStateCreateFlagBits = VkFlags
#endif

#if VK_ARM_rasterization_order_attachment_access
pattern VK_PIPELINE_COLOR_BLEND_STATE_CREATE_RASTERIZATION_ORDER_ATTACHMENT_ACCESS_BIT_ARM :: (Eq a, Num a) => a
pattern VK_PIPELINE_COLOR_BLEND_STATE_CREATE_RASTERIZATION_ORDER_ATTACHMENT_ACCESS_BIT_ARM = VK_PIPELINE_COLOR_BLEND_STATE_CREATE_RASTERIZATION_ORDER_ATTACHMENT_ACCESS_BIT_EXT
#endif

#if VK_EXT_rasterization_order_attachment_access
pattern VK_PIPELINE_COLOR_BLEND_STATE_CREATE_RASTERIZATION_ORDER_ATTACHMENT_ACCESS_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_COLOR_BLEND_STATE_CREATE_RASTERIZATION_ORDER_ATTACHMENT_ACCESS_BIT_EXT = 1
#endif
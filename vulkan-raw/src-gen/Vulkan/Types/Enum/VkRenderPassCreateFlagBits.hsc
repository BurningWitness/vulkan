{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkRenderPassCreateFlagBits where

import Vulkan.Types.Base



type VkRenderPassCreateFlagBits = VkFlags

#if VK_QCOM_render_pass_transform
pattern VK_RENDER_PASS_CREATE_TRANSFORM_BIT_QCOM :: (Eq a, Num a) => a
pattern VK_RENDER_PASS_CREATE_TRANSFORM_BIT_QCOM = 2
#endif
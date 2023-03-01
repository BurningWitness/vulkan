{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDependencyFlagBits where

import Vulkan.Types.Base



type VkDependencyFlagBits = VkFlags

-- | Dependency is per pixel region 
pattern VK_DEPENDENCY_BY_REGION_BIT :: (Eq a, Num a) => a
pattern VK_DEPENDENCY_BY_REGION_BIT = 1

#if VK_VERSION_1_1 || (VK_KHR_device_group)
-- | Dependency is across devices
pattern VK_DEPENDENCY_DEVICE_GROUP_BIT :: (Eq a, Num a) => a
pattern VK_DEPENDENCY_DEVICE_GROUP_BIT = 4
#endif

#if VK_VERSION_1_1 || (VK_KHR_multiview)
pattern VK_DEPENDENCY_VIEW_LOCAL_BIT :: (Eq a, Num a) => a
pattern VK_DEPENDENCY_VIEW_LOCAL_BIT = 2
#endif

#if VK_KHR_multiview
pattern VK_DEPENDENCY_VIEW_LOCAL_BIT_KHR :: (Eq a, Num a) => a
pattern VK_DEPENDENCY_VIEW_LOCAL_BIT_KHR = 2
#endif

#if VK_KHR_device_group
pattern VK_DEPENDENCY_DEVICE_GROUP_BIT_KHR :: (Eq a, Num a) => a
pattern VK_DEPENDENCY_DEVICE_GROUP_BIT_KHR = 4
#endif

#if VK_EXT_attachment_feedback_loop_layout
-- | Dependency may be a feedback loop
pattern VK_DEPENDENCY_FEEDBACK_LOOP_BIT_EXT :: (Eq a, Num a) => a
pattern VK_DEPENDENCY_FEEDBACK_LOOP_BIT_EXT = 8
#endif
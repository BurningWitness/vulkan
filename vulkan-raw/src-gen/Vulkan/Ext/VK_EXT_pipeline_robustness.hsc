{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_pipeline_robustness

module Vulkan.Ext.VK_EXT_pipeline_robustness
  ( pattern VK_EXT_PIPELINE_ROBUSTNESS_SPEC_VERSION
  , pattern VK_EXT_PIPELINE_ROBUSTNESS_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PIPELINE_ROBUSTNESS_CREATE_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_ROBUSTNESS_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_ROBUSTNESS_PROPERTIES_EXT
  , VkPhysicalDevicePipelineRobustnessFeaturesEXT (..)
  , VkPhysicalDevicePipelineRobustnessPropertiesEXT (..)
  , VkPipelineRobustnessCreateInfoEXT (..)
  , VkPipelineRobustnessBufferBehaviorEXT
  , pattern VK_PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_DEVICE_DEFAULT_EXT
  , pattern VK_PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_DISABLED_EXT
  , pattern VK_PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_ROBUST_BUFFER_ACCESS_EXT
  , pattern VK_PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_ROBUST_BUFFER_ACCESS_2_EXT
  , VkPipelineRobustnessImageBehaviorEXT
  , pattern VK_PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_DEVICE_DEFAULT_EXT
  , pattern VK_PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_DISABLED_EXT
  , pattern VK_PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_ROBUST_IMAGE_ACCESS_EXT
  , pattern VK_PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_ROBUST_IMAGE_ACCESS_2_EXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkPipelineRobustnessBufferBehaviorEXT
import Vulkan.Types.Enum.VkPipelineRobustnessImageBehaviorEXT
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDevicePipelineRobustnessFeaturesEXT
import Vulkan.Types.Struct.VkPhysicalDevicePipelineRobustnessPropertiesEXT
import Vulkan.Types.Struct.VkPipelineRobustnessCreateInfoEXT
import Vulkan.Types.VkFun



pattern VK_EXT_PIPELINE_ROBUSTNESS_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_PIPELINE_ROBUSTNESS_SPEC_VERSION = 1

pattern VK_EXT_PIPELINE_ROBUSTNESS_EXTENSION_NAME :: CString
pattern VK_EXT_PIPELINE_ROBUSTNESS_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_PIPELINE_ROBUSTNESS_EXTENSION_NAME = Ptr ("VK_EXT_pipeline_robustness\0"##)

#else

module Vulkan.Ext.VK_EXT_pipeline_robustness where

#endif
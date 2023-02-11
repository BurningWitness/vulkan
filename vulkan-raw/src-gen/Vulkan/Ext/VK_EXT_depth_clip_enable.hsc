{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_depth_clip_enable

module Vulkan.Ext.VK_EXT_depth_clip_enable
  ( pattern VK_EXT_DEPTH_CLIP_ENABLE_SPEC_VERSION
  , pattern VK_EXT_DEPTH_CLIP_ENABLE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_CLIP_ENABLE_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_DEPTH_CLIP_STATE_CREATE_INFO_EXT
  , VkPhysicalDeviceDepthClipEnableFeaturesEXT (..)
  , VkPipelineRasterizationDepthClipStateCreateInfoEXT (..)
  , VkPipelineRasterizationDepthClipStateCreateFlagsEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkPipelineRasterizationDepthClipStateCreateFlagsEXT
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceDepthClipEnableFeaturesEXT
import Vulkan.Types.Struct.VkPipelineRasterizationDepthClipStateCreateInfoEXT
import Vulkan.Types.VkFun



pattern VK_EXT_DEPTH_CLIP_ENABLE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_DEPTH_CLIP_ENABLE_SPEC_VERSION = 1

pattern VK_EXT_DEPTH_CLIP_ENABLE_EXTENSION_NAME :: CString
pattern VK_EXT_DEPTH_CLIP_ENABLE_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_DEPTH_CLIP_ENABLE_EXTENSION_NAME = Ptr ("VK_EXT_depth_clip_enable\0"##)

#else

module Vulkan.Ext.VK_EXT_depth_clip_enable where

#endif
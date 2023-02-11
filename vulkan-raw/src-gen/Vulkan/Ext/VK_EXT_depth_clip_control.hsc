{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_depth_clip_control

module Vulkan.Ext.VK_EXT_depth_clip_control
  ( pattern VK_EXT_DEPTH_CLIP_CONTROL_SPEC_VERSION
  , pattern VK_EXT_DEPTH_CLIP_CONTROL_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_CLIP_CONTROL_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_DEPTH_CLIP_CONTROL_CREATE_INFO_EXT
  , VkPhysicalDeviceDepthClipControlFeaturesEXT (..)
  , VkPipelineViewportDepthClipControlCreateInfoEXT (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceDepthClipControlFeaturesEXT
import Vulkan.Types.Struct.VkPipelineViewportDepthClipControlCreateInfoEXT
import Vulkan.Types.VkFun



pattern VK_EXT_DEPTH_CLIP_CONTROL_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_DEPTH_CLIP_CONTROL_SPEC_VERSION = 1

pattern VK_EXT_DEPTH_CLIP_CONTROL_EXTENSION_NAME :: CString
pattern VK_EXT_DEPTH_CLIP_CONTROL_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_DEPTH_CLIP_CONTROL_EXTENSION_NAME = Ptr ("VK_EXT_depth_clip_control\0"##)

#else

module Vulkan.Ext.VK_EXT_depth_clip_control where

#endif
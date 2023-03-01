{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_clip_space_w_scaling

module Vulkan.Ext.VK_NV_clip_space_w_scaling
  ( pattern VK_NV_CLIP_SPACE_W_SCALING_SPEC_VERSION
  , pattern VK_NV_CLIP_SPACE_W_SCALING_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_W_SCALING_STATE_CREATE_INFO_NV
  , pattern VK_DYNAMIC_STATE_VIEWPORT_W_SCALING_NV
  , VkViewportWScalingNV (..)
  , VkPipelineViewportWScalingStateCreateInfoNV (..)
  , VkCmdSetViewportWScalingNV
  , vkFunCmdSetViewportWScalingNV
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkDynamicState
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPipelineViewportWScalingStateCreateInfoNV
import Vulkan.Types.Struct.VkViewportWScalingNV
import Vulkan.Types.Command.VkCmdSetViewportWScalingNV
import Vulkan.Types.VkFun



pattern VK_NV_CLIP_SPACE_W_SCALING_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_CLIP_SPACE_W_SCALING_SPEC_VERSION = 1

pattern VK_NV_CLIP_SPACE_W_SCALING_EXTENSION_NAME :: CString
pattern VK_NV_CLIP_SPACE_W_SCALING_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_CLIP_SPACE_W_SCALING_EXTENSION_NAME = Ptr ("VK_NV_clip_space_w_scaling\0"##)

#else

module Vulkan.Ext.VK_NV_clip_space_w_scaling where

#endif
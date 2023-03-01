{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_scissor_exclusive

module Vulkan.Ext.VK_NV_scissor_exclusive
  ( pattern VK_NV_SCISSOR_EXCLUSIVE_SPEC_VERSION
  , pattern VK_NV_SCISSOR_EXCLUSIVE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_EXCLUSIVE_SCISSOR_STATE_CREATE_INFO_NV
  , pattern VK_DYNAMIC_STATE_EXCLUSIVE_SCISSOR_NV
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXCLUSIVE_SCISSOR_FEATURES_NV
  , VkPipelineViewportExclusiveScissorStateCreateInfoNV (..)
  , VkPhysicalDeviceExclusiveScissorFeaturesNV (..)
  , VkCmdSetExclusiveScissorNV
  , vkFunCmdSetExclusiveScissorNV
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkDynamicState
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceExclusiveScissorFeaturesNV
import Vulkan.Types.Struct.VkPipelineViewportExclusiveScissorStateCreateInfoNV
import Vulkan.Types.Command.VkCmdSetExclusiveScissorNV
import Vulkan.Types.VkFun



pattern VK_NV_SCISSOR_EXCLUSIVE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_SCISSOR_EXCLUSIVE_SPEC_VERSION = 1

pattern VK_NV_SCISSOR_EXCLUSIVE_EXTENSION_NAME :: CString
pattern VK_NV_SCISSOR_EXCLUSIVE_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_SCISSOR_EXCLUSIVE_EXTENSION_NAME = Ptr ("VK_NV_scissor_exclusive\0"##)

#else

module Vulkan.Ext.VK_NV_scissor_exclusive where

#endif
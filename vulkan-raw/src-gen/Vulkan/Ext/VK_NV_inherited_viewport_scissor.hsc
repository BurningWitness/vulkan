{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_inherited_viewport_scissor

module Vulkan.Ext.VK_NV_inherited_viewport_scissor
  ( pattern VK_NV_INHERITED_VIEWPORT_SCISSOR_SPEC_VERSION
  , pattern VK_NV_INHERITED_VIEWPORT_SCISSOR_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INHERITED_VIEWPORT_SCISSOR_FEATURES_NV
  , pattern VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_VIEWPORT_SCISSOR_INFO_NV
  , VkPhysicalDeviceInheritedViewportScissorFeaturesNV (..)
  , VkCommandBufferInheritanceViewportScissorInfoNV (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkCommandBufferInheritanceViewportScissorInfoNV
import Vulkan.Types.Struct.VkPhysicalDeviceInheritedViewportScissorFeaturesNV
import Vulkan.Types.VkFun



pattern VK_NV_INHERITED_VIEWPORT_SCISSOR_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_INHERITED_VIEWPORT_SCISSOR_SPEC_VERSION = 1

pattern VK_NV_INHERITED_VIEWPORT_SCISSOR_EXTENSION_NAME :: CString
pattern VK_NV_INHERITED_VIEWPORT_SCISSOR_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_INHERITED_VIEWPORT_SCISSOR_EXTENSION_NAME = Ptr ("VK_NV_inherited_viewport_scissor\0"##)

#else

module Vulkan.Ext.VK_NV_inherited_viewport_scissor where

#endif
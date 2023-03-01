{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_device_diagnostic_checkpoints

module Vulkan.Ext.VK_NV_device_diagnostic_checkpoints
  ( pattern VK_NV_DEVICE_DIAGNOSTIC_CHECKPOINTS_SPEC_VERSION
  , pattern VK_NV_DEVICE_DIAGNOSTIC_CHECKPOINTS_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_CHECKPOINT_DATA_NV
  , pattern VK_STRUCTURE_TYPE_QUEUE_FAMILY_CHECKPOINT_PROPERTIES_NV
  , VkQueueFamilyCheckpointPropertiesNV (..)
  , VkCheckpointDataNV (..)
  , VkCmdSetCheckpointNV
  , vkFunCmdSetCheckpointNV
  , VkGetQueueCheckpointDataNV
  , vkFunGetQueueCheckpointDataNV
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkCheckpointDataNV
import Vulkan.Types.Struct.VkQueueFamilyCheckpointPropertiesNV
import Vulkan.Types.Command.VkCmdSetCheckpointNV
import Vulkan.Types.Command.VkGetQueueCheckpointDataNV
import Vulkan.Types.VkFun



pattern VK_NV_DEVICE_DIAGNOSTIC_CHECKPOINTS_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_DEVICE_DIAGNOSTIC_CHECKPOINTS_SPEC_VERSION = 2

pattern VK_NV_DEVICE_DIAGNOSTIC_CHECKPOINTS_EXTENSION_NAME :: CString
pattern VK_NV_DEVICE_DIAGNOSTIC_CHECKPOINTS_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_DEVICE_DIAGNOSTIC_CHECKPOINTS_EXTENSION_NAME = Ptr ("VK_NV_device_diagnostic_checkpoints\0"##)

#else

module Vulkan.Ext.VK_NV_device_diagnostic_checkpoints where

#endif
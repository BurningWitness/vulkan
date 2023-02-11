{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_color_write_enable

module Vulkan.Ext.VK_EXT_color_write_enable
  ( pattern VK_EXT_COLOR_WRITE_ENABLE_SPEC_VERSION
  , pattern VK_EXT_COLOR_WRITE_ENABLE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COLOR_WRITE_ENABLE_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_PIPELINE_COLOR_WRITE_CREATE_INFO_EXT
  , pattern VK_DYNAMIC_STATE_COLOR_WRITE_ENABLE_EXT
  , VkPhysicalDeviceColorWriteEnableFeaturesEXT (..)
  , VkPipelineColorWriteCreateInfoEXT (..)
  , VkCmdSetColorWriteEnableEXT
  , vkFunCmdSetColorWriteEnableEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkDynamicState
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceColorWriteEnableFeaturesEXT
import Vulkan.Types.Struct.VkPipelineColorWriteCreateInfoEXT
import Vulkan.Types.Command.VkCmdSetColorWriteEnableEXT
import Vulkan.Types.VkFun



pattern VK_EXT_COLOR_WRITE_ENABLE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_COLOR_WRITE_ENABLE_SPEC_VERSION = 1

pattern VK_EXT_COLOR_WRITE_ENABLE_EXTENSION_NAME :: CString
pattern VK_EXT_COLOR_WRITE_ENABLE_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_COLOR_WRITE_ENABLE_EXTENSION_NAME = Ptr ("VK_EXT_color_write_enable\0"##)

#else

module Vulkan.Ext.VK_EXT_color_write_enable where

#endif
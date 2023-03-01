{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_discard_rectangles

module Vulkan.Ext.VK_EXT_discard_rectangles
  ( pattern VK_EXT_DISCARD_RECTANGLES_SPEC_VERSION
  , pattern VK_EXT_DISCARD_RECTANGLES_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DISCARD_RECTANGLE_PROPERTIES_EXT
  , pattern VK_STRUCTURE_TYPE_PIPELINE_DISCARD_RECTANGLE_STATE_CREATE_INFO_EXT
  , pattern VK_DYNAMIC_STATE_DISCARD_RECTANGLE_EXT
  , VkPhysicalDeviceDiscardRectanglePropertiesEXT (..)
  , VkPipelineDiscardRectangleStateCreateInfoEXT (..)
  , VkPipelineDiscardRectangleStateCreateFlagsEXT
  , VkDiscardRectangleModeEXT
  , pattern VK_DISCARD_RECTANGLE_MODE_INCLUSIVE_EXT
  , pattern VK_DISCARD_RECTANGLE_MODE_EXCLUSIVE_EXT
  , VkCmdSetDiscardRectangleEXT
  , vkFunCmdSetDiscardRectangleEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkDiscardRectangleModeEXT
import Vulkan.Types.Enum.VkDynamicState
import Vulkan.Types.Enum.VkPipelineDiscardRectangleStateCreateFlagsEXT
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceDiscardRectanglePropertiesEXT
import Vulkan.Types.Struct.VkPipelineDiscardRectangleStateCreateInfoEXT
import Vulkan.Types.Command.VkCmdSetDiscardRectangleEXT
import Vulkan.Types.VkFun



pattern VK_EXT_DISCARD_RECTANGLES_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_DISCARD_RECTANGLES_SPEC_VERSION = 1

pattern VK_EXT_DISCARD_RECTANGLES_EXTENSION_NAME :: CString
pattern VK_EXT_DISCARD_RECTANGLES_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_DISCARD_RECTANGLES_EXTENSION_NAME = Ptr ("VK_EXT_discard_rectangles\0"##)

#else

module Vulkan.Ext.VK_EXT_discard_rectangles where

#endif
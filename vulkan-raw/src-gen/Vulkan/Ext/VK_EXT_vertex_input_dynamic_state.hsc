{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_vertex_input_dynamic_state

module Vulkan.Ext.VK_EXT_vertex_input_dynamic_state
  ( pattern VK_EXT_VERTEX_INPUT_DYNAMIC_STATE_SPEC_VERSION
  , pattern VK_EXT_VERTEX_INPUT_DYNAMIC_STATE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_INPUT_DYNAMIC_STATE_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_VERTEX_INPUT_BINDING_DESCRIPTION_2_EXT
  , pattern VK_STRUCTURE_TYPE_VERTEX_INPUT_ATTRIBUTE_DESCRIPTION_2_EXT
  , pattern VK_DYNAMIC_STATE_VERTEX_INPUT_EXT
  , VkPhysicalDeviceVertexInputDynamicStateFeaturesEXT (..)
  , VkVertexInputBindingDescription2EXT (..)
  , VkVertexInputAttributeDescription2EXT (..)
  , VkCmdSetVertexInputEXT
  , vkFunCmdSetVertexInputEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkDynamicState
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceVertexInputDynamicStateFeaturesEXT
import Vulkan.Types.Struct.VkVertexInputAttributeDescription2EXT
import Vulkan.Types.Struct.VkVertexInputBindingDescription2EXT
import Vulkan.Types.Command.VkCmdSetVertexInputEXT
import Vulkan.Types.VkFun



pattern VK_EXT_VERTEX_INPUT_DYNAMIC_STATE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_VERTEX_INPUT_DYNAMIC_STATE_SPEC_VERSION = 2

pattern VK_EXT_VERTEX_INPUT_DYNAMIC_STATE_EXTENSION_NAME :: CString
pattern VK_EXT_VERTEX_INPUT_DYNAMIC_STATE_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_VERTEX_INPUT_DYNAMIC_STATE_EXTENSION_NAME = Ptr ("VK_EXT_vertex_input_dynamic_state\0"##)

#else

module Vulkan.Ext.VK_EXT_vertex_input_dynamic_state where

#endif
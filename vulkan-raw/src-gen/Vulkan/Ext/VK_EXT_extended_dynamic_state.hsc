{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state

module Vulkan.Ext.VK_EXT_extended_dynamic_state
  ( pattern VK_EXT_EXTENDED_DYNAMIC_STATE_SPEC_VERSION
  , pattern VK_EXT_EXTENDED_DYNAMIC_STATE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTENDED_DYNAMIC_STATE_FEATURES_EXT
  , pattern VK_DYNAMIC_STATE_CULL_MODE_EXT
  , pattern VK_DYNAMIC_STATE_FRONT_FACE_EXT
  , pattern VK_DYNAMIC_STATE_PRIMITIVE_TOPOLOGY_EXT
  , pattern VK_DYNAMIC_STATE_VIEWPORT_WITH_COUNT_EXT
  , pattern VK_DYNAMIC_STATE_SCISSOR_WITH_COUNT_EXT
  , pattern VK_DYNAMIC_STATE_VERTEX_INPUT_BINDING_STRIDE_EXT
  , pattern VK_DYNAMIC_STATE_DEPTH_TEST_ENABLE_EXT
  , pattern VK_DYNAMIC_STATE_DEPTH_WRITE_ENABLE_EXT
  , pattern VK_DYNAMIC_STATE_DEPTH_COMPARE_OP_EXT
  , pattern VK_DYNAMIC_STATE_DEPTH_BOUNDS_TEST_ENABLE_EXT
  , pattern VK_DYNAMIC_STATE_STENCIL_TEST_ENABLE_EXT
  , pattern VK_DYNAMIC_STATE_STENCIL_OP_EXT
  , VkPhysicalDeviceExtendedDynamicStateFeaturesEXT (..)
  , VkCmdSetCullModeEXT
  , vkFunCmdSetCullModeEXT
  , VkCmdSetFrontFaceEXT
  , vkFunCmdSetFrontFaceEXT
  , VkCmdSetPrimitiveTopologyEXT
  , vkFunCmdSetPrimitiveTopologyEXT
  , VkCmdSetViewportWithCountEXT
  , vkFunCmdSetViewportWithCountEXT
  , VkCmdSetScissorWithCountEXT
  , vkFunCmdSetScissorWithCountEXT
  , VkCmdBindVertexBuffers2EXT
  , vkFunCmdBindVertexBuffers2EXT
  , VkCmdSetDepthTestEnableEXT
  , vkFunCmdSetDepthTestEnableEXT
  , VkCmdSetDepthWriteEnableEXT
  , vkFunCmdSetDepthWriteEnableEXT
  , VkCmdSetDepthCompareOpEXT
  , vkFunCmdSetDepthCompareOpEXT
  , VkCmdSetDepthBoundsTestEnableEXT
  , vkFunCmdSetDepthBoundsTestEnableEXT
  , VkCmdSetStencilTestEnableEXT
  , vkFunCmdSetStencilTestEnableEXT
  , VkCmdSetStencilOpEXT
  , vkFunCmdSetStencilOpEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkDynamicState
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceExtendedDynamicStateFeaturesEXT
import Vulkan.Types.Command.VkCmdBindVertexBuffers2EXT
import Vulkan.Types.Command.VkCmdSetCullModeEXT
import Vulkan.Types.Command.VkCmdSetDepthBoundsTestEnableEXT
import Vulkan.Types.Command.VkCmdSetDepthCompareOpEXT
import Vulkan.Types.Command.VkCmdSetDepthTestEnableEXT
import Vulkan.Types.Command.VkCmdSetDepthWriteEnableEXT
import Vulkan.Types.Command.VkCmdSetFrontFaceEXT
import Vulkan.Types.Command.VkCmdSetPrimitiveTopologyEXT
import Vulkan.Types.Command.VkCmdSetScissorWithCountEXT
import Vulkan.Types.Command.VkCmdSetStencilOpEXT
import Vulkan.Types.Command.VkCmdSetStencilTestEnableEXT
import Vulkan.Types.Command.VkCmdSetViewportWithCountEXT
import Vulkan.Types.VkFun



pattern VK_EXT_EXTENDED_DYNAMIC_STATE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_EXTENDED_DYNAMIC_STATE_SPEC_VERSION = 1

pattern VK_EXT_EXTENDED_DYNAMIC_STATE_EXTENSION_NAME :: CString
pattern VK_EXT_EXTENDED_DYNAMIC_STATE_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_EXTENDED_DYNAMIC_STATE_EXTENSION_NAME = Ptr ("VK_EXT_extended_dynamic_state\0"##)

#else

module Vulkan.Ext.VK_EXT_extended_dynamic_state where

#endif
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state2

module Vulkan.Ext.VK_EXT_extended_dynamic_state2
  ( pattern VK_EXT_EXTENDED_DYNAMIC_STATE_2_SPEC_VERSION
  , pattern VK_EXT_EXTENDED_DYNAMIC_STATE_2_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTENDED_DYNAMIC_STATE_2_FEATURES_EXT
  , pattern VK_DYNAMIC_STATE_PATCH_CONTROL_POINTS_EXT
  , pattern VK_DYNAMIC_STATE_RASTERIZER_DISCARD_ENABLE_EXT
  , pattern VK_DYNAMIC_STATE_DEPTH_BIAS_ENABLE_EXT
  , pattern VK_DYNAMIC_STATE_LOGIC_OP_EXT
  , pattern VK_DYNAMIC_STATE_PRIMITIVE_RESTART_ENABLE_EXT
  , VkPhysicalDeviceExtendedDynamicState2FeaturesEXT (..)
  , VkCmdSetPatchControlPointsEXT
  , vkFunCmdSetPatchControlPointsEXT
  , VkCmdSetRasterizerDiscardEnableEXT
  , vkFunCmdSetRasterizerDiscardEnableEXT
  , VkCmdSetDepthBiasEnableEXT
  , vkFunCmdSetDepthBiasEnableEXT
  , VkCmdSetLogicOpEXT
  , vkFunCmdSetLogicOpEXT
  , VkCmdSetPrimitiveRestartEnableEXT
  , vkFunCmdSetPrimitiveRestartEnableEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkDynamicState
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceExtendedDynamicState2FeaturesEXT
import Vulkan.Types.Command.VkCmdSetDepthBiasEnableEXT
import Vulkan.Types.Command.VkCmdSetLogicOpEXT
import Vulkan.Types.Command.VkCmdSetPatchControlPointsEXT
import Vulkan.Types.Command.VkCmdSetPrimitiveRestartEnableEXT
import Vulkan.Types.Command.VkCmdSetRasterizerDiscardEnableEXT
import Vulkan.Types.VkFun



pattern VK_EXT_EXTENDED_DYNAMIC_STATE_2_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_EXTENDED_DYNAMIC_STATE_2_SPEC_VERSION = 1

pattern VK_EXT_EXTENDED_DYNAMIC_STATE_2_EXTENSION_NAME :: CString
pattern VK_EXT_EXTENDED_DYNAMIC_STATE_2_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_EXTENDED_DYNAMIC_STATE_2_EXTENSION_NAME = Ptr ("VK_EXT_extended_dynamic_state2\0"##)

#else

module Vulkan.Ext.VK_EXT_extended_dynamic_state2 where

#endif
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_conditional_rendering

module Vulkan.Ext.VK_EXT_conditional_rendering
  ( pattern VK_EXT_CONDITIONAL_RENDERING_SPEC_VERSION
  , pattern VK_EXT_CONDITIONAL_RENDERING_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_CONDITIONAL_RENDERING_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CONDITIONAL_RENDERING_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_CONDITIONAL_RENDERING_BEGIN_INFO_EXT
  , VkConditionalRenderingFlagsEXT
  , VkConditionalRenderingFlagBitsEXT
  , pattern VK_CONDITIONAL_RENDERING_INVERTED_BIT_EXT
  , pattern VK_ACCESS_CONDITIONAL_RENDERING_READ_BIT_EXT
  , pattern VK_BUFFER_USAGE_CONDITIONAL_RENDERING_BIT_EXT
  , pattern VK_PIPELINE_STAGE_CONDITIONAL_RENDERING_BIT_EXT
  , VkCmdBeginConditionalRenderingEXT
  , vkFunCmdBeginConditionalRenderingEXT
  , VkCmdEndConditionalRenderingEXT
  , vkFunCmdEndConditionalRenderingEXT
  , VkConditionalRenderingBeginInfoEXT (..)
  , VkPhysicalDeviceConditionalRenderingFeaturesEXT (..)
  , VkCommandBufferInheritanceConditionalRenderingInfoEXT (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkAccessFlagBits
import Vulkan.Types.Enum.VkBufferUsageFlagBits
import Vulkan.Types.Enum.VkConditionalRenderingFlagBitsEXT
import Vulkan.Types.Enum.VkConditionalRenderingFlagsEXT
import Vulkan.Types.Enum.VkPipelineStageFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkCommandBufferInheritanceConditionalRenderingInfoEXT
import Vulkan.Types.Struct.VkConditionalRenderingBeginInfoEXT
import Vulkan.Types.Struct.VkPhysicalDeviceConditionalRenderingFeaturesEXT
import Vulkan.Types.Command.VkCmdBeginConditionalRenderingEXT
import Vulkan.Types.Command.VkCmdEndConditionalRenderingEXT
import Vulkan.Types.VkFun



pattern VK_EXT_CONDITIONAL_RENDERING_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_CONDITIONAL_RENDERING_SPEC_VERSION = 2

pattern VK_EXT_CONDITIONAL_RENDERING_EXTENSION_NAME :: CString
pattern VK_EXT_CONDITIONAL_RENDERING_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_CONDITIONAL_RENDERING_EXTENSION_NAME = Ptr ("VK_EXT_conditional_rendering\0"##)

#else

module Vulkan.Ext.VK_EXT_conditional_rendering where

#endif
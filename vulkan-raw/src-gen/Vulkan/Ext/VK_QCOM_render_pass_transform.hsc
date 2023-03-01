{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_QCOM_render_pass_transform

module Vulkan.Ext.VK_QCOM_render_pass_transform
  ( pattern VK_QCOM_RENDER_PASS_TRANSFORM_SPEC_VERSION
  , pattern VK_QCOM_RENDER_PASS_TRANSFORM_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_RENDER_PASS_TRANSFORM_INFO_QCOM
  , pattern VK_STRUCTURE_TYPE_RENDER_PASS_TRANSFORM_BEGIN_INFO_QCOM
  , pattern VK_RENDER_PASS_CREATE_TRANSFORM_BIT_QCOM
  , VkRenderPassTransformBeginInfoQCOM (..)
  , VkCommandBufferInheritanceRenderPassTransformInfoQCOM (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkRenderPassCreateFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkCommandBufferInheritanceRenderPassTransformInfoQCOM
import Vulkan.Types.Struct.VkRenderPassTransformBeginInfoQCOM
import Vulkan.Types.VkFun



pattern VK_QCOM_RENDER_PASS_TRANSFORM_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_QCOM_RENDER_PASS_TRANSFORM_SPEC_VERSION = 3

pattern VK_QCOM_RENDER_PASS_TRANSFORM_EXTENSION_NAME :: CString
pattern VK_QCOM_RENDER_PASS_TRANSFORM_EXTENSION_NAME <- (const False -> True)
  where
    VK_QCOM_RENDER_PASS_TRANSFORM_EXTENSION_NAME = Ptr ("VK_QCOM_render_pass_transform\0"##)

#else

module Vulkan.Ext.VK_QCOM_render_pass_transform where

#endif
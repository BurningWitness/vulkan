{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_QCOM_render_pass_shader_resolve

module Vulkan.Ext.VK_QCOM_render_pass_shader_resolve
  ( pattern VK_QCOM_RENDER_PASS_SHADER_RESOLVE_SPEC_VERSION
  , pattern VK_QCOM_RENDER_PASS_SHADER_RESOLVE_EXTENSION_NAME
  , pattern VK_SUBPASS_DESCRIPTION_FRAGMENT_REGION_BIT_QCOM
  , pattern VK_SUBPASS_DESCRIPTION_SHADER_RESOLVE_BIT_QCOM
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkSubpassDescriptionFlagBits
import Vulkan.Types.VkFun



pattern VK_QCOM_RENDER_PASS_SHADER_RESOLVE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_QCOM_RENDER_PASS_SHADER_RESOLVE_SPEC_VERSION = 4

pattern VK_QCOM_RENDER_PASS_SHADER_RESOLVE_EXTENSION_NAME :: CString
pattern VK_QCOM_RENDER_PASS_SHADER_RESOLVE_EXTENSION_NAME <- (const False -> True)
  where
    VK_QCOM_RENDER_PASS_SHADER_RESOLVE_EXTENSION_NAME = Ptr ("VK_QCOM_render_pass_shader_resolve\0"##)

#else

module Vulkan.Ext.VK_QCOM_render_pass_shader_resolve where

#endif
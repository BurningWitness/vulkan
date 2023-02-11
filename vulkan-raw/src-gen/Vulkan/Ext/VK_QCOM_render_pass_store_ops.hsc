{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_QCOM_render_pass_store_ops

module Vulkan.Ext.VK_QCOM_render_pass_store_ops
  ( pattern VK_QCOM_RENDER_PASS_STORE_OPS_SPEC_VERSION
  , pattern VK_QCOM_RENDER_PASS_STORE_OPS_EXTENSION_NAME
  , pattern VK_ATTACHMENT_STORE_OP_NONE_QCOM
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkAttachmentStoreOp
import Vulkan.Types.VkFun



pattern VK_QCOM_RENDER_PASS_STORE_OPS_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_QCOM_RENDER_PASS_STORE_OPS_SPEC_VERSION = 2

pattern VK_QCOM_RENDER_PASS_STORE_OPS_EXTENSION_NAME :: CString
pattern VK_QCOM_RENDER_PASS_STORE_OPS_EXTENSION_NAME <- (const False -> True)
  where
    VK_QCOM_RENDER_PASS_STORE_OPS_EXTENSION_NAME = Ptr ("VK_QCOM_render_pass_store_ops\0"##)

#else

module Vulkan.Ext.VK_QCOM_render_pass_store_ops where

#endif
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_load_store_op_none

module Vulkan.Ext.VK_EXT_load_store_op_none
  ( pattern VK_EXT_LOAD_STORE_OP_NONE_SPEC_VERSION
  , pattern VK_EXT_LOAD_STORE_OP_NONE_EXTENSION_NAME
  , pattern VK_ATTACHMENT_LOAD_OP_NONE_EXT
  , pattern VK_ATTACHMENT_STORE_OP_NONE_EXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkAttachmentLoadOp
import Vulkan.Types.Enum.VkAttachmentStoreOp
import Vulkan.Types.VkFun



pattern VK_EXT_LOAD_STORE_OP_NONE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_LOAD_STORE_OP_NONE_SPEC_VERSION = 1

pattern VK_EXT_LOAD_STORE_OP_NONE_EXTENSION_NAME :: CString
pattern VK_EXT_LOAD_STORE_OP_NONE_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_LOAD_STORE_OP_NONE_EXTENSION_NAME = Ptr ("VK_EXT_load_store_op_none\0"##)

#else

module Vulkan.Ext.VK_EXT_load_store_op_none where

#endif
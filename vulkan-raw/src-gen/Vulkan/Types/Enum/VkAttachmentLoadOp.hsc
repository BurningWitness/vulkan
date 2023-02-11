{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkAttachmentLoadOp where

import Data.Int



type VkAttachmentLoadOp = #{type int}

pattern VK_ATTACHMENT_LOAD_OP_LOAD :: (Eq a, Num a) => a
pattern VK_ATTACHMENT_LOAD_OP_LOAD = 0

pattern VK_ATTACHMENT_LOAD_OP_CLEAR :: (Eq a, Num a) => a
pattern VK_ATTACHMENT_LOAD_OP_CLEAR = 1

pattern VK_ATTACHMENT_LOAD_OP_DONT_CARE :: (Eq a, Num a) => a
pattern VK_ATTACHMENT_LOAD_OP_DONT_CARE = 2

#if VK_EXT_load_store_op_none
pattern VK_ATTACHMENT_LOAD_OP_NONE_EXT :: (Eq a, Num a) => a
pattern VK_ATTACHMENT_LOAD_OP_NONE_EXT = 1000400000
#endif
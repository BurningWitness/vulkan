{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkAttachmentStoreOp where

import Data.Int



type VkAttachmentStoreOp = #{type int}

pattern VK_ATTACHMENT_STORE_OP_STORE :: (Eq a, Num a) => a
pattern VK_ATTACHMENT_STORE_OP_STORE = 0

pattern VK_ATTACHMENT_STORE_OP_DONT_CARE :: (Eq a, Num a) => a
pattern VK_ATTACHMENT_STORE_OP_DONT_CARE = 1

#if VK_VERSION_1_3 || (VK_EXT_load_store_op_none) || (VK_KHR_dynamic_rendering) || (VK_QCOM_render_pass_store_ops)
pattern VK_ATTACHMENT_STORE_OP_NONE :: (Eq a, Num a) => a
pattern VK_ATTACHMENT_STORE_OP_NONE = 1000301000
#endif

#if VK_KHR_dynamic_rendering
pattern VK_ATTACHMENT_STORE_OP_NONE_KHR :: (Eq a, Num a) => a
pattern VK_ATTACHMENT_STORE_OP_NONE_KHR = VK_ATTACHMENT_STORE_OP_NONE
#endif

#if VK_QCOM_render_pass_store_ops
pattern VK_ATTACHMENT_STORE_OP_NONE_QCOM :: (Eq a, Num a) => a
pattern VK_ATTACHMENT_STORE_OP_NONE_QCOM = VK_ATTACHMENT_STORE_OP_NONE
#endif

#if VK_EXT_load_store_op_none
pattern VK_ATTACHMENT_STORE_OP_NONE_EXT :: (Eq a, Num a) => a
pattern VK_ATTACHMENT_STORE_OP_NONE_EXT = VK_ATTACHMENT_STORE_OP_NONE
#endif
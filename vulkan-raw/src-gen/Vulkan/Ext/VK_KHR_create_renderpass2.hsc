{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_create_renderpass2

module Vulkan.Ext.VK_KHR_create_renderpass2
  ( pattern VK_KHR_CREATE_RENDERPASS_2_SPEC_VERSION
  , pattern VK_KHR_CREATE_RENDERPASS_2_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_2_KHR
  , pattern VK_STRUCTURE_TYPE_ATTACHMENT_REFERENCE_2_KHR
  , pattern VK_STRUCTURE_TYPE_SUBPASS_DESCRIPTION_2_KHR
  , pattern VK_STRUCTURE_TYPE_SUBPASS_DEPENDENCY_2_KHR
  , pattern VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO_2_KHR
  , pattern VK_STRUCTURE_TYPE_SUBPASS_BEGIN_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_SUBPASS_END_INFO_KHR
  , VkCreateRenderPass2KHR
  , vkFunCreateRenderPass2KHR
  , VkCmdBeginRenderPass2KHR
  , vkFunCmdBeginRenderPass2KHR
  , VkCmdNextSubpass2KHR
  , vkFunCmdNextSubpass2KHR
  , VkCmdEndRenderPass2KHR
  , vkFunCmdEndRenderPass2KHR
  , VkRenderPassCreateInfo2KHR
  , VkAttachmentDescription2KHR
  , VkAttachmentReference2KHR
  , VkSubpassDescription2KHR
  , VkSubpassDependency2KHR
  , VkSubpassBeginInfoKHR
  , VkSubpassEndInfoKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkAttachmentDescription2KHR
import Vulkan.Types.Struct.VkAttachmentReference2KHR
import Vulkan.Types.Struct.VkRenderPassCreateInfo2KHR
import Vulkan.Types.Struct.VkSubpassBeginInfoKHR
import Vulkan.Types.Struct.VkSubpassDependency2KHR
import Vulkan.Types.Struct.VkSubpassDescription2KHR
import Vulkan.Types.Struct.VkSubpassEndInfoKHR
import Vulkan.Types.Command.VkCmdBeginRenderPass2KHR
import Vulkan.Types.Command.VkCmdEndRenderPass2KHR
import Vulkan.Types.Command.VkCmdNextSubpass2KHR
import Vulkan.Types.Command.VkCreateRenderPass2KHR
import Vulkan.Types.VkFun



pattern VK_KHR_CREATE_RENDERPASS_2_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_CREATE_RENDERPASS_2_SPEC_VERSION = 1

pattern VK_KHR_CREATE_RENDERPASS_2_EXTENSION_NAME :: CString
pattern VK_KHR_CREATE_RENDERPASS_2_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_CREATE_RENDERPASS_2_EXTENSION_NAME = Ptr ("VK_KHR_create_renderpass2\0"##)

#else

module Vulkan.Ext.VK_KHR_create_renderpass2 where

#endif
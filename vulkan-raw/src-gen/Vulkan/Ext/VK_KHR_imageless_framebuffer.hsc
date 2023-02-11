{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_imageless_framebuffer

module Vulkan.Ext.VK_KHR_imageless_framebuffer
  ( pattern VK_KHR_IMAGELESS_FRAMEBUFFER_SPEC_VERSION
  , pattern VK_KHR_IMAGELESS_FRAMEBUFFER_EXTENSION_NAME
  , VkPhysicalDeviceImagelessFramebufferFeaturesKHR
  , VkFramebufferAttachmentsCreateInfoKHR
  , VkFramebufferAttachmentImageInfoKHR
  , VkRenderPassAttachmentBeginInfoKHR
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGELESS_FRAMEBUFFER_FEATURES_KHR
  , pattern VK_STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENTS_CREATE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENT_IMAGE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_RENDER_PASS_ATTACHMENT_BEGIN_INFO_KHR
  , pattern VK_FRAMEBUFFER_CREATE_IMAGELESS_BIT_KHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkFramebufferCreateFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkFramebufferAttachmentImageInfoKHR
import Vulkan.Types.Struct.VkFramebufferAttachmentsCreateInfoKHR
import Vulkan.Types.Struct.VkPhysicalDeviceImagelessFramebufferFeaturesKHR
import Vulkan.Types.Struct.VkRenderPassAttachmentBeginInfoKHR
import Vulkan.Types.VkFun



pattern VK_KHR_IMAGELESS_FRAMEBUFFER_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_IMAGELESS_FRAMEBUFFER_SPEC_VERSION = 1

pattern VK_KHR_IMAGELESS_FRAMEBUFFER_EXTENSION_NAME :: CString
pattern VK_KHR_IMAGELESS_FRAMEBUFFER_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_IMAGELESS_FRAMEBUFFER_EXTENSION_NAME = Ptr ("VK_KHR_imageless_framebuffer\0"##)

#else

module Vulkan.Ext.VK_KHR_imageless_framebuffer where

#endif
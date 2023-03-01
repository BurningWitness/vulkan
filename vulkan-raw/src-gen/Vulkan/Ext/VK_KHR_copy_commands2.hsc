{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_copy_commands2

module Vulkan.Ext.VK_KHR_copy_commands2
  ( pattern VK_KHR_COPY_COMMANDS_2_SPEC_VERSION
  , pattern VK_KHR_COPY_COMMANDS_2_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_COPY_BUFFER_INFO_2_KHR
  , pattern VK_STRUCTURE_TYPE_COPY_IMAGE_INFO_2_KHR
  , pattern VK_STRUCTURE_TYPE_COPY_BUFFER_TO_IMAGE_INFO_2_KHR
  , pattern VK_STRUCTURE_TYPE_COPY_IMAGE_TO_BUFFER_INFO_2_KHR
  , pattern VK_STRUCTURE_TYPE_BLIT_IMAGE_INFO_2_KHR
  , pattern VK_STRUCTURE_TYPE_RESOLVE_IMAGE_INFO_2_KHR
  , pattern VK_STRUCTURE_TYPE_BUFFER_COPY_2_KHR
  , pattern VK_STRUCTURE_TYPE_IMAGE_COPY_2_KHR
  , pattern VK_STRUCTURE_TYPE_IMAGE_BLIT_2_KHR
  , pattern VK_STRUCTURE_TYPE_BUFFER_IMAGE_COPY_2_KHR
  , pattern VK_STRUCTURE_TYPE_IMAGE_RESOLVE_2_KHR
  , VkCopyBufferInfo2KHR
  , VkCopyImageInfo2KHR
  , VkCopyBufferToImageInfo2KHR
  , VkCopyImageToBufferInfo2KHR
  , VkBlitImageInfo2KHR
  , VkResolveImageInfo2KHR
  , VkBufferCopy2KHR
  , VkImageCopy2KHR
  , VkImageBlit2KHR
  , VkBufferImageCopy2KHR
  , VkImageResolve2KHR
  , VkCmdCopyBuffer2KHR
  , vkFunCmdCopyBuffer2KHR
  , VkCmdCopyImage2KHR
  , vkFunCmdCopyImage2KHR
  , VkCmdCopyBufferToImage2KHR
  , vkFunCmdCopyBufferToImage2KHR
  , VkCmdCopyImageToBuffer2KHR
  , vkFunCmdCopyImageToBuffer2KHR
  , VkCmdBlitImage2KHR
  , vkFunCmdBlitImage2KHR
  , VkCmdResolveImage2KHR
  , vkFunCmdResolveImage2KHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkBlitImageInfo2KHR
import Vulkan.Types.Struct.VkBufferCopy2KHR
import Vulkan.Types.Struct.VkBufferImageCopy2KHR
import Vulkan.Types.Struct.VkCopyBufferInfo2KHR
import Vulkan.Types.Struct.VkCopyBufferToImageInfo2KHR
import Vulkan.Types.Struct.VkCopyImageInfo2KHR
import Vulkan.Types.Struct.VkCopyImageToBufferInfo2KHR
import Vulkan.Types.Struct.VkImageBlit2KHR
import Vulkan.Types.Struct.VkImageCopy2KHR
import Vulkan.Types.Struct.VkImageResolve2KHR
import Vulkan.Types.Struct.VkResolveImageInfo2KHR
import Vulkan.Types.Command.VkCmdBlitImage2KHR
import Vulkan.Types.Command.VkCmdCopyBuffer2KHR
import Vulkan.Types.Command.VkCmdCopyBufferToImage2KHR
import Vulkan.Types.Command.VkCmdCopyImage2KHR
import Vulkan.Types.Command.VkCmdCopyImageToBuffer2KHR
import Vulkan.Types.Command.VkCmdResolveImage2KHR
import Vulkan.Types.VkFun



pattern VK_KHR_COPY_COMMANDS_2_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_COPY_COMMANDS_2_SPEC_VERSION = 1

pattern VK_KHR_COPY_COMMANDS_2_EXTENSION_NAME :: CString
pattern VK_KHR_COPY_COMMANDS_2_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_COPY_COMMANDS_2_EXTENSION_NAME = Ptr ("VK_KHR_copy_commands2\0"##)

#else

module Vulkan.Ext.VK_KHR_copy_commands2 where

#endif
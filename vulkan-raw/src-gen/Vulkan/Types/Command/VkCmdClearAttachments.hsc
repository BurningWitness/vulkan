{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdClearAttachments where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkClearAttachment
import Vulkan.Types.Struct.VkClearRect
import Vulkan.Types.VkFun



type VkCmdClearAttachments =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ attachmentCount
       -> Ptr VkClearAttachment -- ^ pAttachments
       -> #{type uint32_t} -- ^ rectCount
       -> Ptr VkClearRect -- ^ pRects
       -> IO ()

vkFunCmdClearAttachments :: VkFun VkCmdClearAttachments
vkFunCmdClearAttachments = VkFun (Ptr ("vkCmdClearAttachments\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdClearAttachments"
  vkCmdClearAttachments
    :: VkCmdClearAttachments

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdClearAttachments"
  vkCmdClearAttachmentsUnsafe
    :: VkCmdClearAttachments
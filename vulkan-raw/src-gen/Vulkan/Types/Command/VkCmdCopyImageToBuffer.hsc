{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdCopyImageToBuffer where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBufferImageCopy
import Vulkan.Types.VkFun



type VkCmdCopyImageToBuffer =
          VkCommandBuffer -- ^ commandBuffer
       -> VkImage -- ^ srcImage
       -> VkImageLayout -- ^ srcImageLayout
       -> VkBuffer -- ^ dstBuffer
       -> #{type uint32_t} -- ^ regionCount
       -> Ptr VkBufferImageCopy -- ^ pRegions
       -> IO ()

vkFunCmdCopyImageToBuffer :: VkFun VkCmdCopyImageToBuffer
vkFunCmdCopyImageToBuffer = VkFun (Ptr ("vkCmdCopyImageToBuffer\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdCopyImageToBuffer"
  vkCmdCopyImageToBuffer
    :: VkCmdCopyImageToBuffer

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdCopyImageToBuffer"
  vkCmdCopyImageToBufferUnsafe
    :: VkCmdCopyImageToBuffer
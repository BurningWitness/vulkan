{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdCopyBufferToImage where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBufferImageCopy
import Vulkan.Types.VkFun



type VkCmdCopyBufferToImage =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBuffer -- ^ srcBuffer
       -> VkImage -- ^ dstImage
       -> VkImageLayout -- ^ dstImageLayout
       -> #{type uint32_t} -- ^ regionCount
       -> Ptr VkBufferImageCopy -- ^ pRegions
       -> IO ()

vkFunCmdCopyBufferToImage :: VkFun VkCmdCopyBufferToImage
vkFunCmdCopyBufferToImage = VkFun (Ptr ("vkCmdCopyBufferToImage\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdCopyBufferToImage"
  vkCmdCopyBufferToImage
    :: VkCmdCopyBufferToImage

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdCopyBufferToImage"
  vkCmdCopyBufferToImageUnsafe
    :: VkCmdCopyBufferToImage
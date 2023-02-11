{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdCopyImage where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkImageCopy
import Vulkan.Types.VkFun



type VkCmdCopyImage =
          VkCommandBuffer -- ^ commandBuffer
       -> VkImage -- ^ srcImage
       -> VkImageLayout -- ^ srcImageLayout
       -> VkImage -- ^ dstImage
       -> VkImageLayout -- ^ dstImageLayout
       -> #{type uint32_t} -- ^ regionCount
       -> Ptr VkImageCopy -- ^ pRegions
       -> IO ()

vkFunCmdCopyImage :: VkFun VkCmdCopyImage
vkFunCmdCopyImage = VkFun (Ptr ("vkCmdCopyImage\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdCopyImage"
  vkCmdCopyImage
    :: VkCmdCopyImage

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdCopyImage"
  vkCmdCopyImageUnsafe
    :: VkCmdCopyImage
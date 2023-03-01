{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdClearDepthStencilImage where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkClearDepthStencilValue
import Vulkan.Types.Struct.VkImageSubresourceRange
import Vulkan.Types.VkFun



type VkCmdClearDepthStencilImage =
          VkCommandBuffer -- ^ commandBuffer
       -> VkImage -- ^ image
       -> VkImageLayout -- ^ imageLayout
       -> Ptr VkClearDepthStencilValue -- ^ pDepthStencil
       -> #{type uint32_t} -- ^ rangeCount
       -> Ptr VkImageSubresourceRange -- ^ pRanges
       -> IO ()

vkFunCmdClearDepthStencilImage :: VkFun VkCmdClearDepthStencilImage
vkFunCmdClearDepthStencilImage = VkFun (Ptr ("vkCmdClearDepthStencilImage\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdClearDepthStencilImage"
  vkCmdClearDepthStencilImage
    :: VkCmdClearDepthStencilImage

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdClearDepthStencilImage"
  vkCmdClearDepthStencilImageUnsafe
    :: VkCmdClearDepthStencilImage
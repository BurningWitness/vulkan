{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdClearColorImage where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkImageSubresourceRange
import Vulkan.Types.Union.VkClearColorValue
import Vulkan.Types.VkFun



type VkCmdClearColorImage =
          VkCommandBuffer -- ^ commandBuffer
       -> VkImage -- ^ image
       -> VkImageLayout -- ^ imageLayout
       -> Ptr VkClearColorValue -- ^ pColor
       -> #{type uint32_t} -- ^ rangeCount
       -> Ptr VkImageSubresourceRange -- ^ pRanges
       -> IO ()

vkFunCmdClearColorImage :: VkFun VkCmdClearColorImage
vkFunCmdClearColorImage = VkFun (Ptr ("vkCmdClearColorImage\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdClearColorImage"
  vkCmdClearColorImage
    :: VkCmdClearColorImage

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdClearColorImage"
  vkCmdClearColorImageUnsafe
    :: VkCmdClearColorImage
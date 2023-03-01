{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdBlitImage where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkFilter
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkImageBlit
import Vulkan.Types.VkFun



type VkCmdBlitImage =
          VkCommandBuffer -- ^ commandBuffer
       -> VkImage -- ^ srcImage
       -> VkImageLayout -- ^ srcImageLayout
       -> VkImage -- ^ dstImage
       -> VkImageLayout -- ^ dstImageLayout
       -> #{type uint32_t} -- ^ regionCount
       -> Ptr VkImageBlit -- ^ pRegions
       -> VkFilter -- ^ filter
       -> IO ()

vkFunCmdBlitImage :: VkFun VkCmdBlitImage
vkFunCmdBlitImage = VkFun (Ptr ("vkCmdBlitImage\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdBlitImage"
  vkCmdBlitImage
    :: VkCmdBlitImage

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdBlitImage"
  vkCmdBlitImageUnsafe
    :: VkCmdBlitImage
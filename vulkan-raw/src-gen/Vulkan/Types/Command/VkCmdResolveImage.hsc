{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdResolveImage where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkImageResolve
import Vulkan.Types.VkFun



type VkCmdResolveImage =
          VkCommandBuffer -- ^ commandBuffer
       -> VkImage -- ^ srcImage
       -> VkImageLayout -- ^ srcImageLayout
       -> VkImage -- ^ dstImage
       -> VkImageLayout -- ^ dstImageLayout
       -> #{type uint32_t} -- ^ regionCount
       -> Ptr VkImageResolve -- ^ pRegions
       -> IO ()

vkFunCmdResolveImage :: VkFun VkCmdResolveImage
vkFunCmdResolveImage = VkFun (Ptr ("vkCmdResolveImage\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdResolveImage"
  vkCmdResolveImage
    :: VkCmdResolveImage

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdResolveImage"
  vkCmdResolveImageUnsafe
    :: VkCmdResolveImage
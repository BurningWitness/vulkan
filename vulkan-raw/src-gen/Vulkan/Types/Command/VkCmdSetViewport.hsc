{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdSetViewport where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkViewport
import Vulkan.Types.VkFun



type VkCmdSetViewport =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ firstViewport
       -> #{type uint32_t} -- ^ viewportCount
       -> Ptr VkViewport -- ^ pViewports
       -> IO ()

vkFunCmdSetViewport :: VkFun VkCmdSetViewport
vkFunCmdSetViewport = VkFun (Ptr ("vkCmdSetViewport\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdSetViewport"
  vkCmdSetViewport
    :: VkCmdSetViewport

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdSetViewport"
  vkCmdSetViewportUnsafe
    :: VkCmdSetViewport
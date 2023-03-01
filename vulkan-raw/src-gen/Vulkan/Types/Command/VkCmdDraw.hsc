{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdDraw where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdDraw =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ vertexCount
       -> #{type uint32_t} -- ^ instanceCount
       -> #{type uint32_t} -- ^ firstVertex
       -> #{type uint32_t} -- ^ firstInstance
       -> IO ()

vkFunCmdDraw :: VkFun VkCmdDraw
vkFunCmdDraw = VkFun (Ptr ("vkCmdDraw\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdDraw"
  vkCmdDraw
    :: VkCmdDraw

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdDraw"
  vkCmdDrawUnsafe
    :: VkCmdDraw
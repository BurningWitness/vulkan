{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdSetDepthBounds where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetDepthBounds =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type float} -- ^ minDepthBounds
       -> #{type float} -- ^ maxDepthBounds
       -> IO ()

vkFunCmdSetDepthBounds :: VkFun VkCmdSetDepthBounds
vkFunCmdSetDepthBounds = VkFun (Ptr ("vkCmdSetDepthBounds\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdSetDepthBounds"
  vkCmdSetDepthBounds
    :: VkCmdSetDepthBounds

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdSetDepthBounds"
  vkCmdSetDepthBoundsUnsafe
    :: VkCmdSetDepthBounds
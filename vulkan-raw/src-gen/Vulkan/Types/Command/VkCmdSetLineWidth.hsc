{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdSetLineWidth where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetLineWidth =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type float} -- ^ lineWidth
       -> IO ()

vkFunCmdSetLineWidth :: VkFun VkCmdSetLineWidth
vkFunCmdSetLineWidth = VkFun (Ptr ("vkCmdSetLineWidth\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdSetLineWidth"
  vkCmdSetLineWidth
    :: VkCmdSetLineWidth

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdSetLineWidth"
  vkCmdSetLineWidthUnsafe
    :: VkCmdSetLineWidth
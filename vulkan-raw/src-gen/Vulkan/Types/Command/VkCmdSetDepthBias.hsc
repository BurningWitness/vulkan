{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdSetDepthBias where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetDepthBias =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type float} -- ^ depthBiasConstantFactor
       -> #{type float} -- ^ depthBiasClamp
       -> #{type float} -- ^ depthBiasSlopeFactor
       -> IO ()

vkFunCmdSetDepthBias :: VkFun VkCmdSetDepthBias
vkFunCmdSetDepthBias = VkFun (Ptr ("vkCmdSetDepthBias\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdSetDepthBias"
  vkCmdSetDepthBias
    :: VkCmdSetDepthBias

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdSetDepthBias"
  vkCmdSetDepthBiasUnsafe
    :: VkCmdSetDepthBias
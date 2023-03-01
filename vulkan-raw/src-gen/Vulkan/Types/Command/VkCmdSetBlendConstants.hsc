{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdSetBlendConstants where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetBlendConstants =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type float} -- ^ blendConstants
       -> IO ()

vkFunCmdSetBlendConstants :: VkFun VkCmdSetBlendConstants
vkFunCmdSetBlendConstants = VkFun (Ptr ("vkCmdSetBlendConstants\0"##))
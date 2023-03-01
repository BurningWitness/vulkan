{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdDispatch where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdDispatch =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ groupCountX
       -> #{type uint32_t} -- ^ groupCountY
       -> #{type uint32_t} -- ^ groupCountZ
       -> IO ()

vkFunCmdDispatch :: VkFun VkCmdDispatch
vkFunCmdDispatch = VkFun (Ptr ("vkCmdDispatch\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdDispatch"
  vkCmdDispatch
    :: VkCmdDispatch

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdDispatch"
  vkCmdDispatchUnsafe
    :: VkCmdDispatch
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkResetCommandPool where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkCommandPoolResetFlags
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkResetCommandPool =
          VkDevice -- ^ device
       -> VkCommandPool -- ^ commandPool
       -> VkCommandPoolResetFlags -- ^ flags
       -> IO VkResult

vkFunResetCommandPool :: VkFun VkResetCommandPool
vkFunResetCommandPool = VkFun (Ptr ("vkResetCommandPool\0"##))

foreign import CALLCV "vulkan/vulkan.h vkResetCommandPool"
  vkResetCommandPool
    :: VkResetCommandPool

foreign import CALLCV unsafe "vulkan/vulkan.h vkResetCommandPool"
  vkResetCommandPoolUnsafe
    :: VkResetCommandPool
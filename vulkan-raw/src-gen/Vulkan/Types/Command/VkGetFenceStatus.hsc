{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkGetFenceStatus where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetFenceStatus =
          VkDevice -- ^ device
       -> VkFence -- ^ fence
       -> IO VkResult

vkFunGetFenceStatus :: VkFun VkGetFenceStatus
vkFunGetFenceStatus = VkFun (Ptr ("vkGetFenceStatus\0"##))

foreign import CALLCV "vulkan/vulkan.h vkGetFenceStatus"
  vkGetFenceStatus
    :: VkGetFenceStatus

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetFenceStatus"
  vkGetFenceStatusUnsafe
    :: VkGetFenceStatus
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkGetEventStatus where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetEventStatus =
          VkDevice -- ^ device
       -> VkEvent -- ^ event
       -> IO VkResult

vkFunGetEventStatus :: VkFun VkGetEventStatus
vkFunGetEventStatus = VkFun (Ptr ("vkGetEventStatus\0"##))

foreign import CALLCV "vulkan/vulkan.h vkGetEventStatus"
  vkGetEventStatus
    :: VkGetEventStatus

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetEventStatus"
  vkGetEventStatusUnsafe
    :: VkGetEventStatus
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Command.VkGetSemaphoreCounterValue where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetSemaphoreCounterValue =
          VkDevice -- ^ device
       -> VkSemaphore -- ^ semaphore
       -> Ptr #{type uint64_t} -- ^ pValue
       -> IO VkResult

vkFunGetSemaphoreCounterValue :: VkFun VkGetSemaphoreCounterValue
vkFunGetSemaphoreCounterValue = VkFun (Ptr ("vkGetSemaphoreCounterValue\0"##))

##if CORE_1_2
foreign import CALLCV "vulkan/vulkan.h vkGetSemaphoreCounterValue"
  vkGetSemaphoreCounterValue
    :: VkGetSemaphoreCounterValue

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetSemaphoreCounterValue"
  vkGetSemaphoreCounterValueUnsafe
    :: VkGetSemaphoreCounterValue
##endif

#else

module Vulkan.Types.Command.VkGetSemaphoreCounterValue where

#endif
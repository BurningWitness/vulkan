{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Command.VkSignalSemaphore where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkSemaphoreSignalInfo
import Vulkan.Types.VkFun



type VkSignalSemaphore =
          VkDevice -- ^ device
       -> Ptr VkSemaphoreSignalInfo -- ^ pSignalInfo
       -> IO VkResult

vkFunSignalSemaphore :: VkFun VkSignalSemaphore
vkFunSignalSemaphore = VkFun (Ptr ("vkSignalSemaphore\0"##))

##if CORE_1_2
foreign import CALLCV "vulkan/vulkan.h vkSignalSemaphore"
  vkSignalSemaphore
    :: VkSignalSemaphore

foreign import CALLCV unsafe "vulkan/vulkan.h vkSignalSemaphore"
  vkSignalSemaphoreUnsafe
    :: VkSignalSemaphore
##endif

#else

module Vulkan.Types.Command.VkSignalSemaphore where

#endif
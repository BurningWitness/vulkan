{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Command.VkWaitSemaphores where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkSemaphoreWaitInfo
import Vulkan.Types.VkFun



type VkWaitSemaphores =
          VkDevice -- ^ device
       -> Ptr VkSemaphoreWaitInfo -- ^ pWaitInfo
       -> #{type uint64_t} -- ^ timeout
       -> IO VkResult

vkFunWaitSemaphores :: VkFun VkWaitSemaphores
vkFunWaitSemaphores = VkFun (Ptr ("vkWaitSemaphores\0"##))

##if CORE_1_2
foreign import CALLCV "vulkan/vulkan.h vkWaitSemaphores"
  vkWaitSemaphores
    :: VkWaitSemaphores

foreign import CALLCV unsafe "vulkan/vulkan.h vkWaitSemaphores"
  vkWaitSemaphoresUnsafe
    :: VkWaitSemaphores
##endif

#else

module Vulkan.Types.Command.VkWaitSemaphores where

#endif
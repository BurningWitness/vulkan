{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCreateSemaphore where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkSemaphoreCreateInfo
import Vulkan.Types.VkFun



type VkCreateSemaphore =
          VkDevice -- ^ device
       -> Ptr VkSemaphoreCreateInfo -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkSemaphore -- ^ pSemaphore
       -> IO VkResult

vkFunCreateSemaphore :: VkFun VkCreateSemaphore
vkFunCreateSemaphore = VkFun (Ptr ("vkCreateSemaphore\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCreateSemaphore"
  vkCreateSemaphore
    :: VkCreateSemaphore

foreign import CALLCV unsafe "vulkan/vulkan.h vkCreateSemaphore"
  vkCreateSemaphoreUnsafe
    :: VkCreateSemaphore
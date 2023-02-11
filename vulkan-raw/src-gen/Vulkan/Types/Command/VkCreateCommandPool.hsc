{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCreateCommandPool where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkCommandPoolCreateInfo
import Vulkan.Types.VkFun



type VkCreateCommandPool =
          VkDevice -- ^ device
       -> Ptr VkCommandPoolCreateInfo -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkCommandPool -- ^ pCommandPool
       -> IO VkResult

vkFunCreateCommandPool :: VkFun VkCreateCommandPool
vkFunCreateCommandPool = VkFun (Ptr ("vkCreateCommandPool\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCreateCommandPool"
  vkCreateCommandPool
    :: VkCreateCommandPool

foreign import CALLCV unsafe "vulkan/vulkan.h vkCreateCommandPool"
  vkCreateCommandPoolUnsafe
    :: VkCreateCommandPool
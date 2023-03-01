{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCreateQueryPool where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkQueryPoolCreateInfo
import Vulkan.Types.VkFun



type VkCreateQueryPool =
          VkDevice -- ^ device
       -> Ptr VkQueryPoolCreateInfo -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkQueryPool -- ^ pQueryPool
       -> IO VkResult

vkFunCreateQueryPool :: VkFun VkCreateQueryPool
vkFunCreateQueryPool = VkFun (Ptr ("vkCreateQueryPool\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCreateQueryPool"
  vkCreateQueryPool
    :: VkCreateQueryPool

foreign import CALLCV unsafe "vulkan/vulkan.h vkCreateQueryPool"
  vkCreateQueryPoolUnsafe
    :: VkCreateQueryPool
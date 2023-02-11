{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCreateFence where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkFenceCreateInfo
import Vulkan.Types.VkFun



type VkCreateFence =
          VkDevice -- ^ device
       -> Ptr VkFenceCreateInfo -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkFence -- ^ pFence
       -> IO VkResult

vkFunCreateFence :: VkFun VkCreateFence
vkFunCreateFence = VkFun (Ptr ("vkCreateFence\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCreateFence"
  vkCreateFence
    :: VkCreateFence

foreign import CALLCV unsafe "vulkan/vulkan.h vkCreateFence"
  vkCreateFenceUnsafe
    :: VkCreateFence
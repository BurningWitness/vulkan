{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCreateBufferView where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkBufferViewCreateInfo
import Vulkan.Types.VkFun



type VkCreateBufferView =
          VkDevice -- ^ device
       -> Ptr VkBufferViewCreateInfo -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkBufferView -- ^ pView
       -> IO VkResult

vkFunCreateBufferView :: VkFun VkCreateBufferView
vkFunCreateBufferView = VkFun (Ptr ("vkCreateBufferView\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCreateBufferView"
  vkCreateBufferView
    :: VkCreateBufferView

foreign import CALLCV unsafe "vulkan/vulkan.h vkCreateBufferView"
  vkCreateBufferViewUnsafe
    :: VkCreateBufferView
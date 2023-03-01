{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCreateBuffer where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkBufferCreateInfo
import Vulkan.Types.VkFun



type VkCreateBuffer =
          VkDevice -- ^ device
       -> Ptr VkBufferCreateInfo -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkBuffer -- ^ pBuffer
       -> IO VkResult

vkFunCreateBuffer :: VkFun VkCreateBuffer
vkFunCreateBuffer = VkFun (Ptr ("vkCreateBuffer\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCreateBuffer"
  vkCreateBuffer
    :: VkCreateBuffer

foreign import CALLCV unsafe "vulkan/vulkan.h vkCreateBuffer"
  vkCreateBufferUnsafe
    :: VkCreateBuffer
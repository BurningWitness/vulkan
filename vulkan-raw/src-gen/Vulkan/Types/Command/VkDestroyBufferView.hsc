{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkDestroyBufferView where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroyBufferView =
          VkDevice -- ^ device
       -> VkBufferView -- ^ bufferView
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroyBufferView :: VkFun VkDestroyBufferView
vkFunDestroyBufferView = VkFun (Ptr ("vkDestroyBufferView\0"##))

foreign import CALLCV "vulkan/vulkan.h vkDestroyBufferView"
  vkDestroyBufferView
    :: VkDestroyBufferView

foreign import CALLCV unsafe "vulkan/vulkan.h vkDestroyBufferView"
  vkDestroyBufferViewUnsafe
    :: VkDestroyBufferView
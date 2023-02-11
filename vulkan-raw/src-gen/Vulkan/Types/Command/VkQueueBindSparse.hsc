{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkQueueBindSparse where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBindSparseInfo
import Vulkan.Types.VkFun



type VkQueueBindSparse =
          VkQueue -- ^ queue
       -> #{type uint32_t} -- ^ bindInfoCount
       -> Ptr VkBindSparseInfo -- ^ pBindInfo
       -> VkFence -- ^ fence
       -> IO VkResult

vkFunQueueBindSparse :: VkFun VkQueueBindSparse
vkFunQueueBindSparse = VkFun (Ptr ("vkQueueBindSparse\0"##))

foreign import CALLCV "vulkan/vulkan.h vkQueueBindSparse"
  vkQueueBindSparse
    :: VkQueueBindSparse

foreign import CALLCV unsafe "vulkan/vulkan.h vkQueueBindSparse"
  vkQueueBindSparseUnsafe
    :: VkQueueBindSparse
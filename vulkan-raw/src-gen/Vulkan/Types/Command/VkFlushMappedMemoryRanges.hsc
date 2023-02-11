{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkFlushMappedMemoryRanges where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkMappedMemoryRange
import Vulkan.Types.VkFun



type VkFlushMappedMemoryRanges =
          VkDevice -- ^ device
       -> #{type uint32_t} -- ^ memoryRangeCount
       -> Ptr VkMappedMemoryRange -- ^ pMemoryRanges
       -> IO VkResult

vkFunFlushMappedMemoryRanges :: VkFun VkFlushMappedMemoryRanges
vkFunFlushMappedMemoryRanges = VkFun (Ptr ("vkFlushMappedMemoryRanges\0"##))

foreign import CALLCV "vulkan/vulkan.h vkFlushMappedMemoryRanges"
  vkFlushMappedMemoryRanges
    :: VkFlushMappedMemoryRanges

foreign import CALLCV unsafe "vulkan/vulkan.h vkFlushMappedMemoryRanges"
  vkFlushMappedMemoryRangesUnsafe
    :: VkFlushMappedMemoryRanges
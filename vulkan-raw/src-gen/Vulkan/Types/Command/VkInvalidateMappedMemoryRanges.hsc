{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkInvalidateMappedMemoryRanges where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkMappedMemoryRange
import Vulkan.Types.VkFun



type VkInvalidateMappedMemoryRanges =
          VkDevice -- ^ device
       -> #{type uint32_t} -- ^ memoryRangeCount
       -> Ptr VkMappedMemoryRange -- ^ pMemoryRanges
       -> IO VkResult

vkFunInvalidateMappedMemoryRanges :: VkFun VkInvalidateMappedMemoryRanges
vkFunInvalidateMappedMemoryRanges = VkFun (Ptr ("vkInvalidateMappedMemoryRanges\0"##))

foreign import CALLCV "vulkan/vulkan.h vkInvalidateMappedMemoryRanges"
  vkInvalidateMappedMemoryRanges
    :: VkInvalidateMappedMemoryRanges

foreign import CALLCV unsafe "vulkan/vulkan.h vkInvalidateMappedMemoryRanges"
  vkInvalidateMappedMemoryRangesUnsafe
    :: VkInvalidateMappedMemoryRanges
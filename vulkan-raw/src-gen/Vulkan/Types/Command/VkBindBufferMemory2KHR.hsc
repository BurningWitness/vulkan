{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_bind_memory2

module Vulkan.Types.Command.VkBindBufferMemory2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBindBufferMemoryInfo
import Vulkan.Types.VkFun



type VkBindBufferMemory2KHR =
          VkDevice -- ^ device
       -> #{type uint32_t} -- ^ bindInfoCount
       -> Ptr VkBindBufferMemoryInfo -- ^ pBindInfos
       -> IO VkResult

vkFunBindBufferMemory2KHR :: VkFun VkBindBufferMemory2KHR
vkFunBindBufferMemory2KHR = VkFun (Ptr ("vkBindBufferMemory2KHR\0"##))

#else

module Vulkan.Types.Command.VkBindBufferMemory2KHR where

#endif
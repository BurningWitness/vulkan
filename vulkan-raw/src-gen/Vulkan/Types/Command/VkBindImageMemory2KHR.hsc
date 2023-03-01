{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_bind_memory2

module Vulkan.Types.Command.VkBindImageMemory2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBindImageMemoryInfo
import Vulkan.Types.VkFun



type VkBindImageMemory2KHR =
          VkDevice -- ^ device
       -> #{type uint32_t} -- ^ bindInfoCount
       -> Ptr VkBindImageMemoryInfo -- ^ pBindInfos
       -> IO VkResult

vkFunBindImageMemory2KHR :: VkFun VkBindImageMemory2KHR
vkFunBindImageMemory2KHR = VkFun (Ptr ("vkBindImageMemory2KHR\0"##))

#else

module Vulkan.Types.Command.VkBindImageMemory2KHR where

#endif
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_memory_win32

module Vulkan.Types.Command.VkGetMemoryWin32HandleKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkMemoryGetWin32HandleInfoKHR
import Vulkan.Types.VkFun



type VkGetMemoryWin32HandleKHR =
          VkDevice -- ^ device
       -> Ptr VkMemoryGetWin32HandleInfoKHR -- ^ pGetWin32HandleInfo
       -> Ptr HANDLE -- ^ pHandle
       -> IO VkResult

vkFunGetMemoryWin32HandleKHR :: VkFun VkGetMemoryWin32HandleKHR
vkFunGetMemoryWin32HandleKHR = VkFun (Ptr ("vkGetMemoryWin32HandleKHR\0"##))

#else

module Vulkan.Types.Command.VkGetMemoryWin32HandleKHR where

#endif
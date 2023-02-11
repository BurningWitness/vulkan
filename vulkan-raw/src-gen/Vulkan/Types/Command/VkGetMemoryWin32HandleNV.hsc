{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_external_memory_win32

module Vulkan.Types.Command.VkGetMemoryWin32HandleNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagsNV
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetMemoryWin32HandleNV =
          VkDevice -- ^ device
       -> VkDeviceMemory -- ^ memory
       -> VkExternalMemoryHandleTypeFlagsNV -- ^ handleType
       -> Ptr HANDLE -- ^ pHandle
       -> IO VkResult

vkFunGetMemoryWin32HandleNV :: VkFun VkGetMemoryWin32HandleNV
vkFunGetMemoryWin32HandleNV = VkFun (Ptr ("vkGetMemoryWin32HandleNV\0"##))

#else

module Vulkan.Types.Command.VkGetMemoryWin32HandleNV where

#endif
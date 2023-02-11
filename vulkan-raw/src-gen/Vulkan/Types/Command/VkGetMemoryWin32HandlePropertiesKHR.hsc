{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_memory_win32

module Vulkan.Types.Command.VkGetMemoryWin32HandlePropertiesKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagBits
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkMemoryWin32HandlePropertiesKHR
import Vulkan.Types.VkFun



type VkGetMemoryWin32HandlePropertiesKHR =
          VkDevice -- ^ device
       -> VkExternalMemoryHandleTypeFlagBits -- ^ handleType
       -> HANDLE -- ^ handle
       -> Ptr VkMemoryWin32HandlePropertiesKHR -- ^ pMemoryWin32HandleProperties
       -> IO VkResult

vkFunGetMemoryWin32HandlePropertiesKHR :: VkFun VkGetMemoryWin32HandlePropertiesKHR
vkFunGetMemoryWin32HandlePropertiesKHR = VkFun (Ptr ("vkGetMemoryWin32HandlePropertiesKHR\0"##))

#else

module Vulkan.Types.Command.VkGetMemoryWin32HandlePropertiesKHR where

#endif
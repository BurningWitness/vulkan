{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_semaphore_win32

module Vulkan.Types.Command.VkGetSemaphoreWin32HandleKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkSemaphoreGetWin32HandleInfoKHR
import Vulkan.Types.VkFun



type VkGetSemaphoreWin32HandleKHR =
          VkDevice -- ^ device
       -> Ptr VkSemaphoreGetWin32HandleInfoKHR -- ^ pGetWin32HandleInfo
       -> Ptr HANDLE -- ^ pHandle
       -> IO VkResult

vkFunGetSemaphoreWin32HandleKHR :: VkFun VkGetSemaphoreWin32HandleKHR
vkFunGetSemaphoreWin32HandleKHR = VkFun (Ptr ("vkGetSemaphoreWin32HandleKHR\0"##))

#else

module Vulkan.Types.Command.VkGetSemaphoreWin32HandleKHR where

#endif
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_semaphore_win32

module Vulkan.Types.Command.VkImportSemaphoreWin32HandleKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkImportSemaphoreWin32HandleInfoKHR
import Vulkan.Types.VkFun



type VkImportSemaphoreWin32HandleKHR =
          VkDevice -- ^ device
       -> Ptr VkImportSemaphoreWin32HandleInfoKHR -- ^ pImportSemaphoreWin32HandleInfo
       -> IO VkResult

vkFunImportSemaphoreWin32HandleKHR :: VkFun VkImportSemaphoreWin32HandleKHR
vkFunImportSemaphoreWin32HandleKHR = VkFun (Ptr ("vkImportSemaphoreWin32HandleKHR\0"##))

#else

module Vulkan.Types.Command.VkImportSemaphoreWin32HandleKHR where

#endif
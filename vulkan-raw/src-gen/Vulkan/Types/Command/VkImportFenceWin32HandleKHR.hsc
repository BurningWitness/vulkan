{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_fence_win32

module Vulkan.Types.Command.VkImportFenceWin32HandleKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkImportFenceWin32HandleInfoKHR
import Vulkan.Types.VkFun



type VkImportFenceWin32HandleKHR =
          VkDevice -- ^ device
       -> Ptr VkImportFenceWin32HandleInfoKHR -- ^ pImportFenceWin32HandleInfo
       -> IO VkResult

vkFunImportFenceWin32HandleKHR :: VkFun VkImportFenceWin32HandleKHR
vkFunImportFenceWin32HandleKHR = VkFun (Ptr ("vkImportFenceWin32HandleKHR\0"##))

#else

module Vulkan.Types.Command.VkImportFenceWin32HandleKHR where

#endif
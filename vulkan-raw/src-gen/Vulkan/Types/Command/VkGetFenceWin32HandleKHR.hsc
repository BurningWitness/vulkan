{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_fence_win32

module Vulkan.Types.Command.VkGetFenceWin32HandleKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkFenceGetWin32HandleInfoKHR
import Vulkan.Types.VkFun



type VkGetFenceWin32HandleKHR =
          VkDevice -- ^ device
       -> Ptr VkFenceGetWin32HandleInfoKHR -- ^ pGetWin32HandleInfo
       -> Ptr HANDLE -- ^ pHandle
       -> IO VkResult

vkFunGetFenceWin32HandleKHR :: VkFun VkGetFenceWin32HandleKHR
vkFunGetFenceWin32HandleKHR = VkFun (Ptr ("vkGetFenceWin32HandleKHR\0"##))

#else

module Vulkan.Types.Command.VkGetFenceWin32HandleKHR where

#endif
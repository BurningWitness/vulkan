{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_performance_query

module Vulkan.Types.Command.VkAcquireProfilingLockKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAcquireProfilingLockInfoKHR
import Vulkan.Types.VkFun



type VkAcquireProfilingLockKHR =
          VkDevice -- ^ device
       -> Ptr VkAcquireProfilingLockInfoKHR -- ^ pInfo
       -> IO VkResult

vkFunAcquireProfilingLockKHR :: VkFun VkAcquireProfilingLockKHR
vkFunAcquireProfilingLockKHR = VkFun (Ptr ("vkAcquireProfilingLockKHR\0"##))

#else

module Vulkan.Types.Command.VkAcquireProfilingLockKHR where

#endif
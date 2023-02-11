{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_performance_query

module Vulkan.Types.Command.VkReleaseProfilingLockKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkReleaseProfilingLockKHR =
          VkDevice -- ^ device
       -> IO ()

vkFunReleaseProfilingLockKHR :: VkFun VkReleaseProfilingLockKHR
vkFunReleaseProfilingLockKHR = VkFun (Ptr ("vkReleaseProfilingLockKHR\0"##))

#else

module Vulkan.Types.Command.VkReleaseProfilingLockKHR where

#endif
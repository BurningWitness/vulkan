{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_semaphore_fd

module Vulkan.Types.Command.VkGetSemaphoreFdKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkSemaphoreGetFdInfoKHR
import Vulkan.Types.VkFun



type VkGetSemaphoreFdKHR =
          VkDevice -- ^ device
       -> Ptr VkSemaphoreGetFdInfoKHR -- ^ pGetFdInfo
       -> Ptr #{type int} -- ^ pFd
       -> IO VkResult

vkFunGetSemaphoreFdKHR :: VkFun VkGetSemaphoreFdKHR
vkFunGetSemaphoreFdKHR = VkFun (Ptr ("vkGetSemaphoreFdKHR\0"##))

#else

module Vulkan.Types.Command.VkGetSemaphoreFdKHR where

#endif
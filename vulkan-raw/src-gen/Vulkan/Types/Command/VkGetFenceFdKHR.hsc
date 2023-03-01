{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_fence_fd

module Vulkan.Types.Command.VkGetFenceFdKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkFenceGetFdInfoKHR
import Vulkan.Types.VkFun



type VkGetFenceFdKHR =
          VkDevice -- ^ device
       -> Ptr VkFenceGetFdInfoKHR -- ^ pGetFdInfo
       -> Ptr #{type int} -- ^ pFd
       -> IO VkResult

vkFunGetFenceFdKHR :: VkFun VkGetFenceFdKHR
vkFunGetFenceFdKHR = VkFun (Ptr ("vkGetFenceFdKHR\0"##))

#else

module Vulkan.Types.Command.VkGetFenceFdKHR where

#endif
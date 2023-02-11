{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_deferred_host_operations

module Vulkan.Types.Command.VkDeferredOperationJoinKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkDeferredOperationJoinKHR =
          VkDevice -- ^ device
       -> VkDeferredOperationKHR -- ^ operation
       -> IO VkResult

vkFunDeferredOperationJoinKHR :: VkFun VkDeferredOperationJoinKHR
vkFunDeferredOperationJoinKHR = VkFun (Ptr ("vkDeferredOperationJoinKHR\0"##))

#else

module Vulkan.Types.Command.VkDeferredOperationJoinKHR where

#endif